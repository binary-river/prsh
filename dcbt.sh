#/usr/bin/bash
# direct copy all files in copy directory to target directory using tar

echo "copy folder : $1"
echo "target folder: $2"

cd $1 && tar cf - . | (cd $2 && tar xpvf -)

