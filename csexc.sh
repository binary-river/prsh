# BASIC CASE USAGE

echo "press any key"
read userInputKey

echo "user input :"$userInputKey


case "$userInputKey" in
 [A-Z]{1,} ) echo "upper case alphabet" ;;
 [a-z]{1,} ) echo "lower case alphabet" ;;
 [0-9]{1,} ) echo "number" ;;
 *     ) echo "others" ;;
esac

# It seems regular expression in case has a bug on Bash in CentOS Linux.
