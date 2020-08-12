#!/usr/bin/bash
# Loop in background 

# Run loop in background 
for i in 1 2 3 4 5 6 7 8 9 10
do
 echo -n "$i "
done & 

echo "This will be printed arbitrarily.."

for i in {11..20}
do
 echo -n "$i "
done


echo "End!"

sleep 5
echo 
