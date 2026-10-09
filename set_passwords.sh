#!/bin/bash 

#This script will set a password for each of the created users.
#
# Username array
usernames=("atanaka" "alee" "rpatel")
for username in "${usernames[@]}"
do
    sudo passwd "$username"
done
echo "Successfully set passwords"