#!/bin/bash

# Creates a log file at /tmp/script.log
log_folder="/tmp"
log_file="$log_folder/script.log"
error_log_file="$log_folder/script-errors.log"

mkdir -p "$log_folder"

# Redirects all success output to the log file

# Redirects all error output to /tmp/script-errors.log
# Runs three commands: ls /tmp, ls /fakedir, date
# At the end, prints the contents of both log files

ls /tmp >>"$log_file" 2>>"$error_log_file"
ls /fakedir >>"$log_file" 2>>"$error_log_file"
date >>"$log_file" 2>>"$error_log_file"

cat "$log_file"
cat "$error_log_file"