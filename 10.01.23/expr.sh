#!/bin/bash

a=10.25867
# b=2.3

read -p "Enter the value of b: " b

# c=`expr $a \* $b`
# c=$(expr $a \* $b)
# c=$(echo "$a * $b" | bc)

# c=`expr $a / $b`

c=`echo "$a * $b" | bc -l`


echo "$c"