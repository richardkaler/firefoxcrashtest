#!/bin/bash

# Copyright 2024 Richard Kaler 

# This script is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as published
# by the Free Software Foundation; either version 3 of the License, or (at
# your option) any later version.

# This script is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.

# Set the URL you want to open in tabs
url="gmail.com"
# Set the number of tabs you want to open
count=1
num_tabs=8
while : 
do
# Loop to open tabs
for ((i=1; i<=num_tabs; i++)); do
    sleep 1s
    #firefox --new-instance --new-tab "$url" &
    ~/bin/firefox-esr --new-tab "$url" &
done
    wait 
# Wait for a moment to allow tabs to open before exiting the script
sleep 2s
if [[ $count == 5 ]]; then 
    break 
fi
echo "on crash attempt: $count"
((count++))
done


