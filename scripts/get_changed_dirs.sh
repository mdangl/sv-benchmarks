#!/bin/bash


#following variable contains the names of the files in the diff with master:
# i) which are either c, header or preprocesses files in the c folder, and
# ii) deleted files are not considered
relevant_diff=`git diff --name-only --diff-filter=d origin/master... -- 'c/*.i' 'c/*.c' 'c/*.h'`
[ -z "$relevant_diff" ] && echo "Found nothing to build!!" && exit
# dirs is the list of directories from the changed files
dirs=`echo $relevant_diff | xargs dirname | cut -d/ -f2- | sort | uniq`

