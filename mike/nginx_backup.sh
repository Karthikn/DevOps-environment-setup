#!/bin/bash
DATE=$(date +%Y-%m-%d)
BACKUP_DIR="/backups"
BACKUP_FILE="nginx_backup_$DATE.tar.gz"
TAR_OPTIONS="czf"

# Create backup
tar $TAR_OPTIONS $BACKUP_DIR/$BACKUP_FILE /etc/nginx /var/www/html
echo "Nginx Backup completed: $BACKUP_FILE" >> /DevOps_Env-Setup/mike/nginx_backup.log
