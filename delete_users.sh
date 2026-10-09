#!/bin/bash

# This script deletes multiple users based on an array of usernames.
#
# Username array
usernames=("atanaka" "alee" "rpatel")

# create the users by looping through the array
for username in "${usernames[@]}"
do
    sudo userdel -r "$username"
done

echo "Successfully deleted users"