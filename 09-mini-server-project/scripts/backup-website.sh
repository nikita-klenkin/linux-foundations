#!/bin/Bash

BACKUP_DIR="/var/backups/website"
SOURCE_DIR="/var/www/html"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

tar -czf "$BACKUP_DIR/website-$TIMESTAMP.tar.gz" "$SOURCE_DIR"

echo "Website backup completed: website-$TIMESTAMP.tar.gz"