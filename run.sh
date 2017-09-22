#!/bin/bash

UNME=$(uname)
SDIR=$(pwd)
TDIR=$(cd $(dirname "$0") && pwd -P)
# VARS ==========================================
source "${TDIR}/src/header.sh"

echo "${CBLU} !BATTLESTATION! ${C}begin setup"
# greet

if [[ $UNME == 'Darwin' ]]; then
    UNME='osx'
else
    echo "${TERR}unexpected os ${CHI}${UNME}${C}"
    exit 1
fi
# determine os

cd "${TDIR}/src/os/${UNME}"
source "./install.sh" 
# run os specific installation

for D in $(find "${TDIR}/src/app" -d 1 -type d); do
  cd $D
  source "./install.sh"
done
# loop src/app dirs, go in, call install

echo "${CGRE} successfull setup ${C}"
cd $SDIR
# return to source directory
