#!/usr/bin/bash
# Code blocks and I/O redirection

File=/etc/fstab

echo "File name is :$File"

{
read line1
read line2
read line3
read line4
} < $File

echo "First line in $File is :"
echo $line1
echo "Second line in $File is :"
echo $line2
echo "Third line in $File is :"
echo $line3
echo "Forth line in $File is :"
echo $line4


exit 0

