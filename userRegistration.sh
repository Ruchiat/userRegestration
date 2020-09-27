#!/bin/bash

#User Registration
#System needs to ensure all validations are in place during the User Entry


echo "Welcome to user registration process."

read -p "Please enter your first name: " Name

#Validate user first name.

pat="^[[:upper:]]{1}[a-z A-Z 0-9]{2}$"

if [[ $Name =~ $pat ]]
then
	echo "Valid_name"
else
	echo "Invalid_name"
fi;


