#!/usr/bin/bash
# VARIABLE NAME TEST..
# ARGUMENTS VARAIBLE IS $0 $1 $2.. 
# GET ARGUMENTS BY ITERATING USING INDIRECT REFERENCE

echo "all var.. $@"

for i in `echo {1..4}`
do
echo "arg${i} is.. ${!i}"

# echo ${i}
done
