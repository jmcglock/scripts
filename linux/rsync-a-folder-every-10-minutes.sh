#!/bin/bash

# Set the source and destination directories for the rsync command
SRC_DIR="/path/to/source/directory"
DST_DIR="/path/to/destination/directory"

# Use a loop to run the rsync command every 10 minutes
while true; do
    rsync -avz "$SRC_DIR" "$DST_DIR"
    sleep 600
done
