#/bin/bash

read -p "Enter <src1> <src2> <dest>: " file1 file2 dest

cat $file1 $file2 > $dest

cat "$dest"