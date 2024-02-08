#!/bin/bash

# Set the URL you want to open in tabs
url="gmail.com"
# Set the number of tabs you want to open
count=1
num_tabs=8
while : 
do
# Loop to open tabs
for ((i=1; i<=$num_tabs; i++)); do
    sleep 6s &
    #firefox --new-instance --new-tab "$url" &
    firefox --new-tab "$url" &
done
    
    wait 
# Wait for a moment to allow tabs to open before exiting the script
sleep 2s
if [[ $count == 5 ]]; then 
    break 
fi
echo "on loop number: $count"
((count++))
done


