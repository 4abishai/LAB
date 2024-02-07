#!/bin/bash

read -p "Enter file names: " -a files

for ((i=0; i < ${#files[@]}; i++))
do 
    size=$(ls -l ${files[i]} | awk '{print $5}')
    filename=$(echo "${files[i]}" | awk -F[.txt] '{print $1}')
    
    mkdir "$filename"_"$size"
done