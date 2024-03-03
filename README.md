# Nmap Scan Report Generator

This Flask application allows users to perform Nmap scans on target IP addresses and generate a PDF report of the scan results. The application stores the scan results and user-submitted email addresses in a MySQL database for future reference.

## Features

- **Scan Target IP:** Users can input a target IP address and initiate an Nmap scan.
- **Email Subscription:** Users can subscribe to receive scan reports via email.
- **PDF Report Generation:** The application generates a PDF report of the Nmap scan results.
- **Database Storage:** Scan results and email addresses are stored in a MySQL database.

## Prerequisites

Before running the application, ensure you have the following installed:

- Python (3.x recommended)
- Flask
- ReportLab
- MySQL Server
- Nmap

## Installation

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/kffod/nmapproject
    ```

2. **Navigate to the Project Directory:**

    ```bash
    cd nmapproject
    ```

3. **Install Dependencies:**

    ```bash
    pip install -r requirements.txt
    ```

4. **Set Up Your MySQL Database:**
    - Create a database named `nmap`.
    - Import given database in your local server.
    - Update the `db_config` variables in `backend.py` with your database information.

5. **Run the Application:**

    ```bash
    python backend.py
    ```

6. **Access the Application:**

    Open your web browser and go to [http://127.0.0.1:5000/](http://127.0.0.1:5000/).

## Usage

1. Enter the target IP address and your email on the home page.
2. Click the "Scan" button to initiate the Nmap scan.
3. Check the generated PDF report or download it.
4. Subscription emails are stored in the database for future use.

## Additional Notes

- Adjust the Nmap command in the `nmap_command` variable in `backend.py` to customize the scan options.
- Customize the PDF report format by modifying the `generate_pdf` function in `backend.py`.
- This project uses Flask for the web framework, MySQL for database storage, and ReportLab for PDF generation.

Feel free to enhance the application based on your specific requirements and use cases.

   
