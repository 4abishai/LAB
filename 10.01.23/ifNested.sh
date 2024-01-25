#!/bin/bash

# read -p "Enter val: " val

val=44
if [[ `expr $val % 2` -eq 0 ]]
then 
    echo "It is even"
fi
