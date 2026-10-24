#!/bin/bash

# Gets today's day automatically
# If it is Saturday or Sunday, print Weekend! Enjoy your holiday.
# If it is Monday, print Start of the week. Let's go!
# For any other day, print Weekday. Go to school/work.
day_of_week=$(date +%A)
echo "today is $day_of_week"

if [ "$day_of_week" -eq "Saturday" ] || [ "$day_of_week" -eq "Sunday" ] ; then 
  echo "Enjoy your holiday."
fi

