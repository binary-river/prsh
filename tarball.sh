#!/usr/bin/bash
# Backup all files in current directory modified witin last 24 hours.
# in a tarball

BACKUPFILE=backup-$(date +%m-%d-%Y)
# Backup file name

tar cvf $BACKUPFILE.tar `find *.sh -mtime -1 -type f -print`
gzip $BACKUPFILE.tar

exit 0
