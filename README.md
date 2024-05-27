# File-Deletion-Policy-Script
This shell script automates the process of cleaning up old files in a specified directory based on their age. It is designed to help manage disk space by deleting files that are older than a specified number of days. The script also logs all actions and deletions to a log file for auditing and review purposes.

## How It Works
1. Configuration: Set the TARGET_DIR variable to the directory you want to clean up and the DAYS_OLD variable to the number of days after which files should be deleted. Set the LOG_FILE variable to the path where you want the log file to be saved.
2. Directory Check: The script first checks if the specified target directory exists. If it does not, an error message is logged and the script exits.
3. File Deletion: If the directory exists, the script uses the find command to locate and delete files older than the specified number of days.
4. Logging: All actions, including the start of the deletion process, which files were deleted, and the completion time, are logged to the specified log file.
