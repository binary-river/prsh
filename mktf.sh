#!/usr/bin/bash
# make temp file using date function

prefix="temp"
suffix=$(date +%s)

touch $prefix.$suffix

exit 0
