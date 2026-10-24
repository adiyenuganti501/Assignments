#!/bin/bash
# Accepts a number as a command line argument
echo "Enter a number"
read number
# Checks if the number is even or odd using the modulo operator
if (( "$number" % 2 == 0 )) ; then 
 echo "$number IS EVEN"
else 
 echo "$number IS ODD"
fi
# Prints the result

#Another way of writing
if [ $# -ne 0 ]; then
 echo "Enter the number to check even/odd"
 exit 1
fi

if  (( $1%2 == 0 )) ; then
  echo "$1 IS EVEN"
esle 
 echo "$! IS ODD"
fi