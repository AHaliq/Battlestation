#!/bin/bash

UNME=$(uname)
SDIR=$(pwd)
TDIR=$(cd $(dirname "$0") && pwd -P)
# VARS ==========================================

CERR='\033[1;37;41m'
CBLU='\033[1;37;44m'
CHI='\033[1;34m'
C='\033[0m'
# ANSI COL ======================================

TERR=" ${CERR} ERROR ${C}"
# TEXT ==========================================

echo "${CBLU} !BATTLESTATION! ${C}"
# greet

if [[ $UNME == 'Darwin' ]]; then
    UNME='osx'
else
    echo "${TERR} unexpected os ${CHI}${UNME}${C}"
    exit 1
fi
# determine os

cd "$TDIR/src/os/$UNME"
pwd
source "./install.sh"
# run os specific installation

cd $TDIR
# go to target directory

# loop src/app dirs, go in, call install
#ln -sf "$BASEDIR/.vimrc" ~/.vimrcA
cd $SDIR
# return to source directory

# determine $PATH
# if [[ ":$PATH:" == *":$HOME/bin:"* ]]; then
