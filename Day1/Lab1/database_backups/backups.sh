#!/bin/bash
DB_USER="root"
DB_PASSWORD="2233"
DB_NAME="mysql"

BACKUP_DIR=/home/jess/Downloads/ivolve/database_backups

DATE=$(date +%F)
BACKUP_FILE="$BACKUP_DIR/MySQL_backup_$DATE.sql"
sudo mysqldump -u root $DB_NAME > $BACKUP_FILE


