#!/bin/bash

# Write a shell program to find whether a given year is a leap year or not.

read -p "Enter year: " year

if [[ $((year % 4)) -eq 0 && $((year % 100)) -ne 0 ]] || [[ $((year % 400)) -eq 0 ]]; then
    echo "$year is a leap year"
else
    echo "$year is not a leap year"
fi
