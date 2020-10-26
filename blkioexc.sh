#!/bin/bash
# READING LINE FROM FILE, WITH CODE BLOCK

FileName=/etc/fstab

{
read line1
read line2
} < $FileName

echo -n "First line of $FileName is : "
echo $line1
echo -n "Second Line of $FileName is : "
echo $line2

exit 0
