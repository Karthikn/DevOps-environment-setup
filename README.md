# DevOps Environment Setup

## Overview
This project automates backups for Apache and Nginx servers. The scripts are scheduled using cron jobs and include logging for monitoring.

Table of Contents
Project Overview
Features Implemented
Repository Structure
How to Use the Project
Workflow Details
Ownership and License
Releases
Acknowledgments


Project Overview
This repository contains solutions for the Hero Vired DevOps Assignment. It demonstrates practical implementation of backup automation using shell scripts, cron jobs, and CI/CD integration.

Features Implemented
1. Automated Backup Scripts
Apache Server Backup:

Backs up /etc/apache2/ configuration and /var/www/html/ directory.
Saves backups to /backups/ with a date-based naming convention.
Nginx Server Backup:

Backs up /etc/nginx/ configuration and /usr/share/nginx/html/ directory.
Saves backups to /backups/ with a date-based naming convention.
Error Logging:

Both scripts generate detailed logs for each operation.
2. Cron Job Integration
Scheduled backups daily:
Apache backup runs at 2:00 AM.
Nginx backup runs at 2:30 AM.
3. Centralized Backup Script
A single wrapper script (Script.sh) allows manual execution of all backups.
4. Organized Repository Structure
Ensures clear separation of scripts, logs, and cron configurations.
Repository Structure
plaintext
Copy code
/DevOps_Env-Setup/  
├── mike/  
│   ├── nginx_backup.sh        # Script for Nginx server backup automation  
│   └── nginx_backup.log       # Log file for Nginx backup operations  
├── sarah/  
│   ├── apache_backup.sh       # Script for Apache server backup automation  
│   └── apache_backup.log      # Log file for Apache backup operations  
├── cron_jobs/  
│   ├── crontab                # Cron job configurations for automated backups  
├── backups/  
│   ├── apache_backup_YYYY-MM-DD.tar.gz # Apache backup archives  
│   └── nginx_backup_YYYY-MM-DD.tar.gz  # Nginx backup archives  
├── Script.sh                  # Wrapper script for backup and CI/CD automation  
└── README.md                  # Repository documentation  
How to Use the Project
Prerequisites
Linux/Unix system with shell access.
Cron daemon installed and running.
Steps to Clone and Use
Clone the repository:

bash
Copy code
git clone https://github.com/Karthikn/DevOps_Env-Setup.git  
Navigate to the repository:

bash
Copy code
cd DevOps_Env-Setup  
Run the backup scripts manually:

bash
Copy code
sudo ./sarah/apache_backup.sh  
sudo ./mike/nginx_backup.sh  
Run all backups via the centralized script:

bash
Copy code
sudo ./Script.sh  
Verify backup files:

bash
Copy code
ls /backups/  
tar -tzf /backups/apache_backup_YYYY-MM-DD.tar.gz  
tar -tzf /backups/nginx_backup_YYYY-MM-DD.tar.gz  
Workflow Details
Cron Job Integration
Configured to run daily backups:
plaintext
Copy code
# Apache Backup (Sarah) at 2:00 AM  
0 2 * * * /DevOps_Env-Setup/sarah/apache_backup.sh >> /dev/null 2>&1  

# Nginx Backup (Mike) at 2:30 AM  
30 2 * * * /DevOps_Env-Setup/mike/nginx_backup.sh >> /dev/null 2>&1  
Error Logging
Logs stored in respective directories (apache_backup.log, nginx_backup.log).
Centralized Backup Execution
Manual execution supported via Script.sh.
Ownership and License
Ownership
Owner: Karthikn
License
This project is proprietary and owned by Karthikn. Unauthorized use, reproduction, or distribution of any part of this repository is prohibited.

Releases
Version 1.0: Initial version with fully functional backup scripts for Apache and Nginx.
Acknowledgments
Hero Vired Assignment Guidelines
Cron and Shell Scripting Resources
