# cleanup
# should be executed by root

LOG_DIR=/var/log
ROOT_UID=0
LINES=50
E_XCD=66
E_NOTROOT=67


if [[ "$UID" -ne "$ROOT_UID" ]]
then
 echo "script should be executed by root"
 exit $E_NOTROOT
fi

if [[ -n "$1" ]]
then
 lines=$1
else
 lines=$LINES
fi

cd $LOG_DIR

if [[ $(pwd) != $LOG_DIR ]] 
then
 echo "incorrect folder"
 exit $E_XCD
fi

tail -$lines messages > mesg.temp
mv mesg.temp messages

echo "done cleaning up logs"

exit 0
