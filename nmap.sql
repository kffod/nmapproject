-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 08:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nmap`
--

-- --------------------------------------------------------

--
-- Table structure for table `scan_results`
--

CREATE TABLE `scan_results` (
  `id` int(11) NOT NULL,
  `target_ip` varchar(255) NOT NULL,
  `scan_result` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scan_results`
--

INSERT INTO `scan_results` (`id`, `target_ip`, `scan_result`) VALUES
(75, '192.168.1.4', 'Starting Nmap 7.94 ( https://nmap.org ) at 2024-02-28 01:03 India Standard Time\nNSE: Loaded 156 scripts for scanning.\nNSE: Script Pre-scanning.\nInitiating NSE at 01:03\nCompleted NSE at 01:03, 0.00s elapsed\nInitiating NSE at 01:03\nCompleted NSE at 01:03, 0.00s elapsed\nInitiating NSE at 01:03\nCompleted NSE at 01:03, 0.00s elapsed\nInitiating ARP Ping Scan at 01:03\nScanning 192.168.1.4 [1 port]\nCompleted ARP Ping Scan at 01:03, 0.11s elapsed (1 total hosts)\nInitiating Parallel DNS resolution of 1 host. at 01:03\nCompleted Parallel DNS resolution of 1 host. at 01:03, 16.55s elapsed\nInitiating SYN Stealth Scan at 01:03\nScanning 192.168.1.4 [1000 ports]\nCompleted SYN Stealth Scan at 01:04, 0.91s elapsed (1000 total ports)\nInitiating Service scan at 01:04\nInitiating OS detection (try #1) against 192.168.1.4\nRetrying OS detection (try #2) against 192.168.1.4\nNSE: Script scanning 192.168.1.4.\nInitiating NSE at 01:04\nCompleted NSE at 01:04, 5.04s elapsed\nInitiating NSE at 01:04\nCompleted NSE at 01:04, 0.00s elapsed\nInitiating NSE at 01:04\nCompleted NSE at 01:04, 0.01s elapsed\nNmap scan report for 192.168.1.4\nHost is up (0.025s latency).\nAll 1000 scanned ports on 192.168.1.4 are in ignored states.\nNot shown: 1000 closed tcp ports (reset)\nMAC Address: 82:94:FE:80:3E:1F (Unknown)\nToo many fingerprints match this host to give specific OS details\nNetwork Distance: 1 hop\n\nTRACEROUTE\nHOP RTT      ADDRESS\n1   24.51 ms 192.168.1.4\n\nNSE: Script Post-scanning.\nInitiating NSE at 01:04\nCompleted NSE at 01:04, 0.01s elapsed\nInitiating NSE at 01:04\nCompleted NSE at 01:04, 0.00s elapsed\nInitiating NSE at 01:04\nCompleted NSE at 01:04, 0.02s elapsed\nRead data files from: C:\\Program Files (x86)\\Nmap\nOS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .\nNmap done: 1 IP address (1 host up) scanned in 25.47 seconds\n           Raw packets sent: 1016 (46.140KB) | Rcvd: 1016 (42.076KB)\n'),
(76, '192.168.2.2', 'Starting Nmap 7.94 ( https://nmap.org ) at 2024-02-28 01:07 India Standard Time\nNSE: Loaded 156 scripts for scanning.\nNSE: Script Pre-scanning.\nInitiating NSE at 01:07\nCompleted NSE at 01:07, 0.00s elapsed\nInitiating NSE at 01:07\nCompleted NSE at 01:07, 0.00s elapsed\nInitiating NSE at 01:07\nCompleted NSE at 01:07, 0.00s elapsed\nInitiating Ping Scan at 01:07\nScanning 192.168.2.2 [4 ports]\nCompleted Ping Scan at 01:07, 2.08s elapsed (1 total hosts)\nNmap scan report for 192.168.2.2 [host down]\nNSE: Script Post-scanning.\nInitiating NSE at 01:07\nCompleted NSE at 01:07, 0.00s elapsed\nInitiating NSE at 01:07\nCompleted NSE at 01:07, 0.00s elapsed\nInitiating NSE at 01:07\nCompleted NSE at 01:07, 0.00s elapsed\nRead data files from: C:\\Program Files (x86)\\Nmap\nNote: Host seems down. If it is really up, but blocking our ping probes, try -Pn\nNmap done: 1 IP address (0 hosts up) scanned in 2.84 seconds\n           Raw packets sent: 8 (304B) | Rcvd: 0 (0B)\n'),
(77, '192.168.2.2', 'Starting Nmap 7.94 ( https://nmap.org ) at 2024-02-28 01:14 India Standard Time\nNSE: Loaded 156 scripts for scanning.\nNSE: Script Pre-scanning.\nInitiating NSE at 01:14\nCompleted NSE at 01:14, 0.00s elapsed\nInitiating NSE at 01:14\nCompleted NSE at 01:14, 0.00s elapsed\nInitiating NSE at 01:14\nCompleted NSE at 01:14, 0.00s elapsed\nInitiating Ping Scan at 01:14\nScanning 192.168.2.2 [4 ports]\nCompleted Ping Scan at 01:14, 2.08s elapsed (1 total hosts)\nNmap scan report for 192.168.2.2 [host down]\nNSE: Script Post-scanning.\nInitiating NSE at 01:14\nCompleted NSE at 01:14, 0.00s elapsed\nInitiating NSE at 01:14\nCompleted NSE at 01:14, 0.00s elapsed\nInitiating NSE at 01:14\nCompleted NSE at 01:14, 0.00s elapsed\nRead data files from: C:\\Program Files (x86)\\Nmap\nNote: Host seems down. If it is really up, but blocking our ping probes, try -Pn\nNmap done: 1 IP address (0 hosts up) scanned in 2.67 seconds\n           Raw packets sent: 8 (304B) | Rcvd: 0 (0B)\n'),
(78, '192.168.1.2', 'Starting Nmap 7.94 ( https://nmap.org ) at 2024-02-28 01:14 India Standard Time\nNSE: Loaded 156 scripts for scanning.\nNSE: Script Pre-scanning.\nInitiating NSE at 01:14\nCompleted NSE at 01:14, 0.00s elapsed\nInitiating NSE at 01:14\nCompleted NSE at 01:14, 0.00s elapsed\nInitiating NSE at 01:14\nCompleted NSE at 01:14, 0.00s elapsed\nInitiating ARP Ping Scan at 01:14\nScanning 192.168.1.2 [1 port]\nCompleted ARP Ping Scan at 01:14, 0.19s elapsed (1 total hosts)\nInitiating Parallel DNS resolution of 1 host. at 01:14\nCompleted Parallel DNS resolution of 1 host. at 01:14, 16.55s elapsed\nInitiating SYN Stealth Scan at 01:14\nScanning 192.168.1.2 [1000 ports]\nCompleted SYN Stealth Scan at 01:14, 1.25s elapsed (1000 total ports)\nInitiating Service scan at 01:14\nInitiating OS detection (try #1) against 192.168.1.2\nRetrying OS detection (try #2) against 192.168.1.2\nNSE: Script scanning 192.168.1.2.\nInitiating NSE at 01:15\nCompleted NSE at 01:15, 5.02s elapsed\nInitiating NSE at 01:15\nCompleted NSE at 01:15, 0.00s elapsed\nInitiating NSE at 01:15\nCompleted NSE at 01:15, 0.00s elapsed\nNmap scan report for 192.168.1.2\nHost is up (0.016s latency).\nAll 1000 scanned ports on 192.168.1.2 are in ignored states.\nNot shown: 1000 closed tcp ports (reset)\nMAC Address: D8:32:E3:E8:0B:06 (Xiaomi Communications)\nToo many fingerprints match this host to give specific OS details\nNetwork Distance: 1 hop\n\nTRACEROUTE\nHOP RTT      ADDRESS\n1   15.53 ms 192.168.1.2\n\nNSE: Script Post-scanning.\nInitiating NSE at 01:15\nCompleted NSE at 01:15, 0.00s elapsed\nInitiating NSE at 01:15\nCompleted NSE at 01:15, 0.00s elapsed\nInitiating NSE at 01:15\nCompleted NSE at 01:15, 0.00s elapsed\nRead data files from: C:\\Program Files (x86)\\Nmap\nOS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .\nNmap done: 1 IP address (1 host up) scanned in 27.19 seconds\n           Raw packets sent: 1043 (49.804KB) | Rcvd: 1043 (45.572KB)\n'),
(79, '192.168.1.2', 'Starting Nmap 7.94 ( https://nmap.org ) at 2024-02-28 01:15 India Standard Time\nNmap scan report for 192.168.1.2\nHost is up (0.055s latency).\nAll 1000 scanned ports on 192.168.1.2 are in ignored states.\nNot shown: 1000 closed tcp ports (reset)\nMAC Address: D8:32:E3:E8:0B:06 (Xiaomi Communications)\nToo many fingerprints match this host to give specific OS details\nNetwork Distance: 1 hop\n\nTRACEROUTE\nHOP RTT      ADDRESS\n1   54.79 ms 192.168.1.2\n\nOS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .\nNmap done: 1 IP address (1 host up) scanned in 27.10 seconds\n'),
(80, '192.168.1.2', 'Starting Nmap 7.94 ( https://nmap.org ) at 2024-02-28 01:17 India Standard Time\nNmap scan report for 192.168.1.2\nHost is up (0.036s latency).\nAll 1000 scanned ports on 192.168.1.2 are in ignored states.\nNot shown: 1000 closed tcp ports (reset)\nMAC Address: D8:32:E3:E8:0B:06 (Xiaomi Communications)\nToo many fingerprints match this host to give specific OS details\nNetwork Distance: 1 hop\n\nTRACEROUTE\nHOP RTT      ADDRESS\n1   35.60 ms 192.168.1.2\n\nOS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .\nNmap done: 1 IP address (1 host up) scanned in 25.66 seconds\n');

-- --------------------------------------------------------

--
-- Table structure for table `subscribed_emails`
--

CREATE TABLE `subscribed_emails` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribed_emails`
--

INSERT INTO `subscribed_emails` (`id`, `email`) VALUES
(4, 'sachin.212638112@vcet.edu.in'),
(5, 'sj23029@gmail.com'),
(6, 'sj23029@gmail.com'),
(7, 'sj223med@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scan_results`
--
ALTER TABLE `scan_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed_emails`
--
ALTER TABLE `subscribed_emails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scan_results`
--
ALTER TABLE `scan_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `subscribed_emails`
--
ALTER TABLE `subscribed_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
