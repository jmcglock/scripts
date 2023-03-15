#!/bin/bash

# Set the database credentials
DB_USER="username"
DB_PASSWORD="password"

# Set the database names to be deleted and recreated
DATABASES=(test test1 test2 test3 test4)

# Loop through each database and delete and recreate it in one query
for DB in "${DATABASES[@]}"; do
    mysql -u "$DB_USER" -p"$DB_PASSWORD" -e "DROP DATABASE IF EXISTS $DB; CREATE DATABASE $DB"
done