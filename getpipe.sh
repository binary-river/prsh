#!/usr/bin/bash
#Read input from pipe using while
#When you use pipe, you can list all input by cat ${any number except 0}
#But cannot use both while and cat ${any number except 0} for getting input from pipe
#Also you cannot use while or cat twice for getting input from pipe
#It seems input from pipe will be lost when you use while or cat anyway

linenum=0

echo "okay now using while"
while read line
do
let linenum=linenum+1
echo $linenum "line is :" $line
done
