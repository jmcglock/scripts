#!/bin/bash

# Set the directory where the backup files will be saved
BACKUP_DIR="/path/to/backup/directory"

# Set the database credentials
DB_USER="username"
DB_PASSWORD="password"

# Set the database names to be backed up
DATABASES=(test test1 test2 test3 test4)

# Create the backup directory if it does not already exist
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir -p "$BACKUP_DIR"
fi

# Loop through each database and create a backup file
for DB in "${DATABASES[@]}"; do
    mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB" > "$BACKUP_DIR/$DB.sql"
done
