#!/bin/bash
##WELCOME MESSAGE##
echo "Welcome to user registration"
echo "enter the name:"
read name 

if [[ "$name" =~ ^([A-Za-z]{3,})
then
    echo "First name is valid"
else
    echo "First name is invalid"
fi
echo "enter the name:"
read name
if [[ "$name" =~ ^([A-Za-z]{3,}\s[a-zA-Z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?) ]]
then
    echo "name is valid"
else
    echo "name is invalid"
fi
