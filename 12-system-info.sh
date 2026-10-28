#!/bin/bash


# Accepts one argument: a server name (label only)
# Validates that the argument is provided — exit with error if missing
# Defines a function section that prints a heading separator
# Collects and prints:
# Script start time and PID
# Server label (from argument)
# Current user and home directory
# OS information (cat /etc/os-release | grep PRETTY)
# Disk usage (df -h /)
# Memory usage (free -h)
# Uptime
# Logs everything to /tmp/system-info.log
# Prints total script execution time at the end

log_folder=/var/log
log_file=$log_folder/${0}.log

if [ "$#" -eq 0 ] ; then
 echo "Usage:: ${0} <server-name>"
 exit 1
fi

mkdir -p "$log_folder"
touch "$log_file"

section(){
    echo "==============================================="
    echo "$!" | tee -a "$log_file"
    echo "==============================================="
}

start_time=$(date "+%F %T")

