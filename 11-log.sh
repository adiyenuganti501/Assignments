#!/bin/bash

# Define log files
log_folder="/tmp"
log_file="$log_folder/script.log"
error_log_file="$log_folder/script-errors.log"

# Create or clear log files
> "$log_file"
> "$error_log_file"

# Run commands and redirect output
ls /tmp >> "$log_file" 2>> "$error_log_file"
ls /fakedir >> "$log_file" 2>> "$error_log_file"
date >> "$log_file" 2>> "$error_log_file"

# Display log contents
echo "===== SUCCESS OUTPUT ====="
cat "$log_file"

echo "===== ERROR OUTPUT ====="
cat "$error_log_file"