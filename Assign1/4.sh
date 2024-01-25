#!/bin/bash

sum=0

for (( i=0; i<=4; i++))
do
    read -p "Enter mark for subject `expr $i + 1`: " mark
    sum=`expr $sum + $mark`
done

echo "Average is: `expr $sum / 5`"

