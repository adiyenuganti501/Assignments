#!/bin/bash
#Start time
start_time=$(date +%s)
# Print who is running the script
echo "Running as : $(whoami)"
# Print the current directory
echo "Current directoory : $(pwd)"
# Print the home directory
echo "Home directory is : $HOME"
# Print the PID of the script
echo "PID is : $$"
# Run sleep 10 in the background and print its PID
sleep 10 &
echo "background PID is : $!"
wait
# Print a random number between 1–100
echo "A random number is : $(shuf -i 1-100 -n 1)"
# At the end, print how many seconds the script took to run
#End time
end_time=$(date +%s)
# echo "end time is $end_time"
time_taken=$((end_time - start_time))
echo "Script ran in: $time_taken seconds"