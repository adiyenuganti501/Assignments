#!/bin/bash
# Runs ls /tmp and checks if it succeeded — print SUCCESS or FAILURE
ls /tmp
if [ $? -ne 0 ]; then
 echo "FAILURE"
else 
 echo "SUCCESS"
fi
# Runs ls /fakedir and checks — print SUCCESS or FAILURE
# Runs ping -c1 google.com and checks — print Host reachable or Host not reachable
# At the end, exit the script with code 0 if all commands succeeded, or 1 if any failed