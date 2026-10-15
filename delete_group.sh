#!/bin/bash

# This script deletes the "students" group.
#
# Username array
usernames=("atanaka" "alee" "rpatel")

# Kill all processes for each user in the array
for username in "${usernames[@]}"
do
    sudo killall -u "$username"
done

# Delete the users and their home directories by looping through the array
for username in "${usernames[@]}"
do
    sudo userdel -r "$username"
done

# Delete the "students" group
sudo groupdel students

echo "Successfully deleted group: students and all associated users"