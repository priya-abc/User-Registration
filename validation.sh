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

echo "Enter Email:"
read email
if [[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]
then
    echo "Email address $email is valid."
else
    echo "Email address $email is invalid."
fi
echo "enter phone number:"
read number
if [[ "$number" =~ ^\d{2}\s\d{10}$ ]]
then
    echo "Phone number is valid"
else
    echo "phone number is invalid"
fi
echo "enter the password"
read password

len="${#password}"
if test $len -ge 8
then
    echo "$password" | grep -q [0-9]
if test $? -eq 0 ; then
           echo "$password" | grep -q [A-Z]

               if test $? -eq 0 ; then
                    echo "$password" | grep -q [a-z]

                     if test $? -eq 0 ; then
                       echo "Strong password"
                   else
echo "weak password include lower case char"
                   fi
            else
               echo "weak password include capital char"
            fi
     else
       echo "please include the numbers in password it is weak password"
fi
else
    echo "password lenght should be greater than or equal 8 hence weak password"
fi
else
    echo "password lenght should be greater than or equal 8 hence weak password"
fi
else
    echo "should have numeric number"
fi
