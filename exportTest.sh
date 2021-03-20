#!/usr/bin/bash
#Export Test
#EXPORTED VARAIBLES CAN NOT BE READ BY PARENTS PROCESS
#ONLY CURRENT PROCESS AND CHILD PROCESS CAN READ THOSE

echo "all arg.. $*"
echo "filename.. $0"
echo "epoxrt test.. process id is.. $$"
echo "arguments.. $@"
echo "aa is.. $aa"

echo "set aa as 1q2w3e"

export aa="1q2w3e"

echo "after setting aa is.. $aa"

echo "call child"
./exportChild.sh arg8 arg9 arg10
echo "end child"


