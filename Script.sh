#!/bin/bash
echo "Running Apache backup..."
/DevOps_Env-Setup/sarah/apache_backup.sh

echo "Running Nginx backup..."
/DevOps_Env-Setup/mike/nginx_backup.sh

echo "Backups completed!"
