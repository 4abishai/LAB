#!/bin/bash

# Write a shell script to reverse a given integer. 

read -p "Enter number: " num 
revNum=0
for (( c=$num; c>0; c/=10 ))
do
    last=$(($c % 10))
    revNum=$(($revNum*10 + last))
done 

echo "$revNum"