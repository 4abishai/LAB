#!/bin/bash

read -p "Enter elements: " -a Name

for ((i=0; i < ${#Name[@]}; i++))
do 
    echo "Element $i: ${Name[i]}"
done