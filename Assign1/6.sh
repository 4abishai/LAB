#!/bin/bash

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b

# Calculate the square of the sum (a + b)^2
result=$(((a + b) * (a + b) ))

echo "The square of the sum (a + b)^2 is: $result"
