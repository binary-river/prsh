#!/usr/bin/bash
# Move entire file tree from on directory to another

(cd ./tar_test && tar cf - .) | (cd ./tar_test2 && tar xpvf -) 
