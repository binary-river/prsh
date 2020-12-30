#!/usr/bin/bash
# loop in background process 
#

for i in {1..10}
do
  echo -n "$i "
done &

for i in {11..20}
do
  echo -n "$i "
done &

echo -n "end!"
