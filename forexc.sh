#!/usr/bin/bash
# Echo all files in specific directories 

echo "hello!"
for file in *
do
 echo `pwd`/$file
done

