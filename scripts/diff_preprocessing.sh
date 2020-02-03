#!/bin/bash

. ./scripts/get_changed_dirs.sh

printf "Following directories will be preprocessed: \n $dirs \n"

goto-diff --version
cd c

DIRECTORIES=""
for dir in $dirs ; do
  DIRECTORIES+="--directory $dir "
done

./compare.py --keep-going --skip-large $DIRECTORIES
