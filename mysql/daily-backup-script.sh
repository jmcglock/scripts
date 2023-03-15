#!/bin/bash

# Set the username and password for the MySQL server
MYSQL_USERNAME=myusername
MYSQL_PASSWORD=mypassword

# Set the names of the databases that you want to back up
DATABASE_NAMES=(test test1 test2 test3)

# Set the directory where the backup files should be stored
BACKUP_DIRECTORY=/var/lib/mysql-backups

# Create an array of the current date components
CURRENT_DATE=($(date +'%Y-%m-%d_%H-%M-%S'))

# Create a backup of each database
for DATABASE_NAME in "${DATABASE_NAMES[@]}"
do
    # Set the name of the backup file
    BACKUP_FILE=mysql_backup_$DATABASE_NAME_${CURRENT_DATE[0]}.sql

    # Create a backup of the database
    mysqldump -u $MYSQL_USERNAME -p$MYSQL_PASSWORD $DATABASE_NAME > $BACKUP_FILE

    # Compress the backup file
    gzip $BACKUP_FILE

    # Move the compressed file to the backup directory
    mv $BACKUP_FILE.gz $BACKUP_DIRECTORY
done