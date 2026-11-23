#!/bin/bash

# This script adds multiple users to the "students" group based on an array of usernames.
#
# Username array
usernames=("atanaka" "alee" "rpatel")

# add the users to the group by looping through the array
for username in "${usernames[@]}"
do
    sudo usermod -aG students "$username"
done

echo "Successfully added users to group: students"