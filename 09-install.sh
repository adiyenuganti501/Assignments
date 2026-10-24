#!/bin/bash

# Checks if the script is run as root — if not, print an error and exit with code 1
# Accepts a package name as argument (e.g., nginx)
# Checks if the package is already installed — if yes, print nginx is already installed and exit
# If not installed, installs it using dnf install -y
# Checks the exit status after install — prints nginx installed successfully or nginx installation failed
# Run as: sudo sh 09-install.sh nginx

user_id=$(id -u)

if [ "$user_id" -ne 0 ] ; then 
 echo "You are not a root user, Please run with root access"
 exit 1
fi
