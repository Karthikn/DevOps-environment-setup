#!/bin/bash
DATE=$(date +%Y-%m-%d)
BACKUP_DIR="/backups"
BACKUP_FILE="apache_backup_$DATE.tar.gz"
TAR_OPTIONS="czf"

# Create backup
tar $TAR_OPTIONS $BACKUP_DIR/$BACKUP_FILE /etc/apache2 /var/www/html
echo "Apache Backup completed: $BACKUP_FILE" >> /DevOps_Env-Setup/sarah/apache_backup.log
