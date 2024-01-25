#!/bin/bash

#Write a shell program to find whether a given year is a leap year or not. 

int a
read -p "Enter year: " a

if [[ $((a % 4)) -eq 0 && $((a % 100)) -eq 0 ]] || [[ $((a % 400)) -eq 0 ]]
    then
    echo "$a is a leap year"
else
    echo "$a is not a leap year"

fi
