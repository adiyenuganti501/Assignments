#!/bin/bash

# Accepts a number as a command line argument
# Validates that the argument is provided — exit with an error if missing
# Checks whether the number is a prime number or not
# Prints the result
# A prime number is a number greater than 1 that has no divisors other than 1 and itself.

if [ $# -eq 0 ] ; then
 echo "Enter a number to check prime number or not"
 exit 1
fi

if [ $1 >= 1 ] ; then
 echo "$1 is not a prime number"
 exit 1
fi
