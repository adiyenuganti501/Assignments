#!/bin/bash
# Runs ls /tmp and checks if it succeeded — print SUCCESS or FAILURE
ls /tmp
if [ $? -ne 0 ]; then
 echo "FAILURE"
else 
 echo "SUCCESS"
fi
# Runs ls /fakedir and checks — print SUCCESS or FAILURE
ls /fakedir
if [ $? -ne 0 ]; then
  echo "FAILURE"
esle 
  echo "SUCCESS"
fi
# Runs ping -c1 google.com and checks — print Host reachable or Host not reachable
ping -c1 google.com
if [ $? -ne 0 ] ; then 
 echo "Host not reachable"
else 
 echo "Host reachable"
fi
# At the end, exit the script with code 0 if all commands succeeded, or 1 if any failed
if [ $? -ne 0 ] ; then
  echo "EXIT WITH 1"
  exit 1
else 
 echo "EXIT WITH 0"
 exit 0
fi
