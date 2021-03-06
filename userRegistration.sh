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

#E.g. abc.xyz@bl.co.in - Email has 3 mandatory parts (abc, bl& co) and 2 optional (xyz & in) 

read -p "Enter The Email_ID: " Email_Address

emailPat="^[a-z]+[0-9]*([-_+.][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([,]{1})*([.][a-z]{2})*$"

if [[ $Email_Address =~ $emailPat ]]
then
	echo "Valid_Information"
else
	echo "Invalid_Information"
fi


#Mobile Format - E.g. 91 9919819801 - Country code follow by space and 10 digit number


read -p "Enter mbile Number " mobileNumber

#Vlaidate mobile number
mobilePat="[0-9]{2}[[:space:]|(0-9)][0-9]{10}$"
if [[ $mobileNumber =~ $mobilePat ]]
then
	echo "Valid_Information"
else
	echo "Invalid_Information"
fi


#minimum 8 Characters for password

read -p "Please Enter Password: " Password

#Validating password
Password_pat="^([0-9 & A-Z a-z] ?[@!*&^%.]{1}]){8,}"


if [[ $Password =~ $Password_pat && $Password =~ [[:upper:]] ]]
then
	echo "Valid_Information"
else
	echo "Invalid_Information"
	
fi
