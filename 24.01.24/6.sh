#!/bin/bash

# Files and directories must be in pattern below-

# XYZ
# ├── MyDir
# ├── MyFile
# ├── test
# └── test.txt

# 3 directories, 1 file

# if not create using:
# mkdir -p ~/XYZ/{MyDir,MyFile,test} && touch ~/XYZ/test.txt

# Script's result will be-

# XYZ
# ├── MyDir
# │   └── test
# └── MyFile
#     └── test.txt

# Source directory
src_dir="$HOME/XYZ"

# Destination directories
 files="$HOME/XYZ/MyFile"
 dirs="$HOME/XYZ/MyDir"

# Move files to MyFile
find "$src_dir" -maxdepth 1 -type f -exec mv {} "$files" \;
# Move directories excluding MyFile directory and itself to MyDir
find "$src_dir"/* -maxdepth 0 -type d ! \( -name "MyDir" -o -name "MyFile" \) -exec mv {} "$dirs" \;

echo "Directories and files moved successfully!"
