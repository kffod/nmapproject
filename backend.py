from flask import Flask, redirect, render_template, request, flash, Response, send_file, url_for
from reportlab.lib import colors
from reportlab.lib.pagesizes import letter
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle
import mysql.connector
import subprocess

app = Flask(__name__)
app.secret_key = "b4d5435f56613c543fee2a52498a9182"  # Set a secret key for flash messages

# Replace the following variables with your MySQL database information
db_config = {
    "host": "127.0.0.1",
    "user": "root",
    "password": "",
    "database": "nmap",
}

def get_db_connection():
    return mysql.connector.connect(**db_config)

def execute_query(query, values=None):
    connection = get_db_connection()
    cursor = connection.cursor()

    try:
        if values:
            cursor.execute(query, values)
        else:
            cursor.execute(query)
        connection.commit()
        return cursor.lastrowid
    except mysql.connector.Error as error:
        print(f"Error: {error}")
        return None
    finally:
        cursor.close()
        connection.close()

def generate_pdf(scan_result, result_id):
    # Convert data to a list of lists (2D array) for the table
    table_data = [['ID', 'Target IP', 'Scan Result']]  # Header row
    table_data.append([result_id, '', scan_result])

    pdf_filename = f'scan_result_{result_id}.pdf'
    doc = SimpleDocTemplate(pdf_filename, pagesize=(800, 1000))  # Adjust the pagesize as needed
    table = Table(table_data)

    # Add style to the table
    style = TableStyle([('BACKGROUND', (0, 0), (-1, 0), colors.grey),
                        ('TEXTCOLOR', (0, 0), (-1, 0), colors.whitesmoke),
                        ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
                        ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
                        ('BOTTOMPADDING', (0, 0), (-1, 0), 12),
                        ('BACKGROUND', (0, 1), (-1, -1), colors.beige),
                        ('GRID', (0, 0), (-1, -1), 1, colors.black)])
    table.setStyle(style)

    # Add table to the PDF document
    doc.build([table])
    return pdf_filename

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/scan', methods=['POST'])
def scan():
    target_ip = request.form['ip']
    email = request.form['email']
    scan_type = 'intense'  # Set to 'intense' for simplicity

    # Validate the email address (you may want to add more thorough validation)
    if '@' not in email:
        flash("Error: Invalid email address.", "danger")
        return redirect(url_for('index'))

    nmap_command = f'nmap -T4 -A {target_ip}'

    result = subprocess.run(nmap_command, shell=True, capture_output=True, text=True)

    if result.returncode != 0:
        flash(f"Error: Nmap scan failed. Please check the target IP and try again.", "danger")
        return redirect(url_for('index'))

    # Store the scan result and email in the MySQL database
    insert_query = "INSERT INTO scan_results (target_ip, scan_result) VALUES (%s, %s)"
    values = (target_ip, result.stdout)
    result_id = execute_query(insert_query, values)

    if result_id is None:
        flash("Error: Failed to store data in the database.", "danger")
        return redirect(url_for('index'))

    # Store the email in the subscribed_emails table
    insert_email_query = "INSERT INTO subscribed_emails (email) VALUES (%s)"
    email_values = (email,)
    email_id = execute_query(insert_email_query, email_values)

    if email_id is None:
        flash("Error: Failed to store email in the database.", "danger")
        return redirect(url_for('index'))

    # Generate PDF report
    pdf_filename = generate_pdf(result.stdout, result_id)

    return send_file(pdf_filename, as_attachment=True)

    print(result.stdout)
    return render_template('result.html', scan_result=result.stdout, pdf_filename=pdf_filename, result_id=result_id)

@app.route('/download_pdf/<int:result_id>')
def download_pdf(result_id):
    pdf_filename = f'scan_result_{result_id}.pdf'
    return send_file(pdf_filename, as_attachment=True)


if __name__ == '__main__':
    app.run(debug=True)
