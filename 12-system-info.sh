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