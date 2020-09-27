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


#Last name starts with Cap and has minimum 3 characters

#Validating last name

read -p "Please enter your Last Name: " Last

lastNamePat="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"

if [[ $Last =~ $lastNamePat ]]
then
	echo "Valiid_Full_Name"
else
	echo "Invalid_Full_Name"
fi
