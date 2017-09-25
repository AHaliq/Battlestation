#!/bin/bash

echo "${CTI} !BATTLESTATION! $C"
# start

if [[ " $UNME " == *' Darwin '* ]]; then
    UNME='osx'
elif [[ " $UNME " == *'-Ubuntu '* ]]; then
    UNME='ubu'
else
    echo "${TERR}unexpected os ${CHI}${UNME}${C}"
    exit 1
fi
# determine os

cd "${TDIR}/src/os/${UNME}"
source "./install.sh" 
# run os specific installation

installapp () { source "./install.sh"; }
for D in $(find ${TDIR}/src/app -maxdepth 1 -mindepth 1 -type d)
do
  cd $D
  query "$(basename $D)" installapp
done
# loop src/app dirs, go in, call install

echo "${CTI} success $C"
cd $SDIR
# return to source directory
