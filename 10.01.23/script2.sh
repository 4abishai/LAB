#!/bin/bash

# Read array input
read -a name

# Echo the first three elements of the array
echo "${name[0]} ${name[1]} ${name[2]}"
