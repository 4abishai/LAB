#!/bin/bash

read -p "Enter a b c: " a b c

if [[ $a -gt $b ]]
then
    if [[ $a -gt $c ]]
     then 
        echo "a is greatest"
    else
        echo "c is greatest"
    fi
else # b > a
    if [[ $b -gt $c ]]
    then
        echo "b is greatest"
    else
        echo "c is greatest"
    fi
fi