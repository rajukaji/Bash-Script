#! /bin/bash

read -p "Enter your name :: " name
#promt user to ask for name
echo "Hello, $name" #print the literal

read -sp "Enter your password :: " password
# -s is to enter in a silent mode
echo "The lenght of your password is :: ${#password}"#to find teh password length
