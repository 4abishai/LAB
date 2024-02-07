#!/bin/bash

# Write a shell program to display the prime number between 1 and hundred.


n=100
for ((i=1; i<=$n; i++))
do
    flag=1
    for ((j=2; j<=$i/2 & $flag; j++))
    do
        if (( i%j == 0 ))
        then
            flag=0
        fi
    done

    if (( flag == 1 ))
    then
        echo -n "$i "
    fi   
done