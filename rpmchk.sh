#!/usr/bin/bash
# Queries an rpm file( url, ftp address ) for description,listing
# and whether it can be installed
# Saves output to a file

SUCCESS=0
E_NOARGS=65

if [ -z $1 ]
then
 echo "Usage: `basename $0` rpm-url(rpm_ftp addr)"
 exit $E_NOARGS
fi

{ # Code block start!
 echo
 echo "Archive Description:"
 rpm -qpi $1  #Query description
 echo
 echo "Archive Listing:"
 rpm -qpl $1  #Query listing
 echo
 rpm -i --test $1 #Query whether rpm file can be installed

 if [[ $? -eq $SUCCESS ]]
 then 
  echo "$1 can be installed"
 else
  echo "$1 cannot be installed"
 fi
 echo 
} > "./rpm_test/$$.test" # Code block end!

echo "Results of rpm test in file $$.test"

exit 0
