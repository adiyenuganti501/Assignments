#!/bin/bash
# Accepts a number as a command line argument
echo "Enter a number"
read number
# Checks if the number is even or odd using the modulo operator
if (( "$number" % 2 == 0 )) ; then 
 echo "EVEN"
else 
 echo "ODD"
fi
# Prints the result