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
