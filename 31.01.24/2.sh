#!/bin/bash

# Write a shell script to verify whether the given string is a palindrome or not.

read -p "Enter number: " num 
revNum=0
for (( c=$num; c>0; c/=10 ))
do
    last=$(($c % 10))
    revNum=$(($revNum*10 + last))
done 

if [[ num -eq revNum ]]
then
    echo "PALINDROME"
else
    echo "NOT PALINDROME"
fi
