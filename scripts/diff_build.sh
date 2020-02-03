#!/bin/bash

. ./scripts/get_changed_dirs.sh

cd c

printf "Following directories will be built: \n $dirs \n"
for d in $dirs
do
  pushd "$d"
  make -j2
  popd
done
