#!/bin/bash
#@cyberflakeconnect

# Directory to clean up
TARGET_DIR="/path/to/your/directory"

# Number of days after which files should be deleted
DAYS_OLD=30

# Log file for deleted files
LOG_FILE="/path/to/your/logfile.log"

# Function to delete old files
delete_old_files() {
    echo "Starting file deletion in directory: $TARGET_DIR" | tee -a "$LOG_FILE"
    echo "Deleting files older than $DAYS_OLD days" | tee -a "$LOG_FILE"

    # Find and delete files older than the specified number of days
    find "$TARGET_DIR" -type f -mtime +"$DAYS_OLD" -print -delete | tee -a "$LOG_FILE"

    echo "File deletion completed on $(date)" | tee -a "$LOG_FILE"
}

# Ensure the target directory exists
if [ -d "$TARGET_DIR" ]; then
    delete_old_files
else
    echo "Directory $TARGET_DIR does not exist. Exiting." | tee -a "$LOG_FILE"
    exit 1
fi
