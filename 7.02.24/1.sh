#!/bin/bash

echo -n "Enter elements: "
read -a Name

for ((i=0; i < ${#Name[@]}; i++))
do 
    echo "Element $i: ${Name[i]}"
done