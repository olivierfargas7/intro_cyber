#!/bin/bash

# This script creates multiple users based on an array of usernames. If the home directories already exist, it will delete everything in the current home directories
# Creates two directories in each user's home directory called "homework" and "projects"

usernames=("atanaka" "alee" "rpatel")

# create the users by looping through the array
for username in "${usernames[@]}"
do
    sudo userdel "$username"
    sudo rm -rf "/home/$username"
    sudo useradd -m "$username" 
    sudo mkdir /home/$username/homework
    sudo mkdir /home/$username/projects
done

echo "Successfully created users"