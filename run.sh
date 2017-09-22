#!/bin/bash

UNME=$(uname)
SDIR=$(pwd)
TDIR=$(cd $(dirname "$0") && pwd -P)
# VARS ==========================================

CERR='\033[1;37;41m'
CBLU='\033[1;34;47m'
CGRE='\033[1;30;42m'
CHI='\033[1;34m'
C='\033[0m'
# ANSI COL ======================================

TERR=" ${CERR} ERROR ${C}"
# TEXT ==========================================

function usebin()
{
    rm -rf "${TDIR}/bin/"
    mkdir "${TDIR}/bin"
    cd "${TDIR}/bin"
}
function blanks()
{
  for (( c=1; c<=${#1}; c++ )); do
    printf ' '
  done
}
function download()
{ 
  usebin
  curl -sL $1 -o $2 -D ./out
  if grep -q "200 OK" "./out"; then
    echo "$3download success"
  else
    echo "${TERR}downloading: $4"
    exit 2
  fi
}
# FUNCTIONS =====================================

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
# source "./install.sh" #<<<< TODO UNCOMMENT
# run os specific installation

for D in $(find "${TDIR}/src/app" -d 1 -type d); do
  cd $D
  source "./install.sh"
done
# loop src/app dirs, go in, call install

echo "${CGRE} successfull setup ${C}"
cd $SDIR
# return to source directory
