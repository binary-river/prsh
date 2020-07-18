#test

var1=`pwd`
var2=$(pwd)

echo $var1 "is var1"
echo $var2 "is var2"

if [[ $(pwd) != "/home/ljg/myrepo/prsh" ]]
then 
  echo "not"
else
  echo "right"
fi
