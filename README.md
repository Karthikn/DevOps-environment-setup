# DevOps Environment Setup

## Overview
This project automates backups for Apache and Nginx servers. The scripts are scheduled using cron jobs and include logging for monitoring.

## Directory Structure
```
/DevOps_Env-Setup/
  ├── mike/
  │   ├── nginx_backup.sh
  │   └── nginx_backup.log
  ├── sarah/
  │   ├── apache_backup.sh
  │   └── apache_backup.log
  ├── cron_jobs/
  │   ├── crontab
  ├── backups/
  │   ├── apache_backup_YYYY-MM-DD.tar.gz
  │   └── nginx_backup_YYYY-MM-DD.tar.gz
  ├── README.md
  └── Script.sh
```

## Usage
- Run backups manually: `bash Script.sh`
- Check logs:
  - Apache: `tail -f /DevOps_Env-Setup/sarah/apache_backup.log`
  - Nginx: `tail -f /DevOps_Env-Setup/mike/nginx_backup.log`
