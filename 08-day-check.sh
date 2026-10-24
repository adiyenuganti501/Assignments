#!/bin/bash

# Gets today's day automatically
# If it is Saturday or Sunday, print Weekend! Enjoy your holiday.
# If it is Monday, print Start of the week. Let's go!
# For any other day, print Weekday. Go to school/work.
day_of_week=$(date +%A)
#echo "today is $day_of_week"

if [ "$day_of_week" == "Saturday" ] || [ "$day_of_week" == "Sunday" ] ; then 
  echo "Enjoy your holiday."
  exit 0
fi

if [ "$day_of_week" == "Monday" ] ; then 
   echo "Start of the week. Let's go!"
   exit 0
fi

if [ ! "$day_of_week" == "Monday" ] || [  ! "$day_of_week" == "Saturday" ] || [  ! "$day_of_week" == "Sunday" ] ; then
  echo "Today is  $day_of_week, So Go to school/work."
  exit 0
fi
