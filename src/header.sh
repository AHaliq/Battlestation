#!/bin/bash

CERR='\033[1;37;41m'
CBLU='\033[1;34;47m'
CGRE='\033[1;30;42m'
CHI='\033[1;34m'
C='\033[0m'
# ANSI COL ======================================

TERR=" $CERR ERROR $C"
TCB=" $CBLU $C"
TCG=" $CGRE $C"
# TEXT ==========================================

function usebin()
{
    rm -rf "$TDIR/bin/"
    mkdir "$TDIR/bin"
    cd "$TDIR/bin"
}
# $ text
function blanks()
{
  for (( c=1; c<=${#1}; c++ )); do
    printf ' '
  done
}
# $ url, path file out, postfix fail msg
function download()
{ 
  usebin
  echo "${TCG}downloading: \033[4m$2$C"
  curl -sL $1 -o $2 -D ./out
  if grep -q "200 OK" "./out"; then
    echo "${TCG}successful"
  else
    echo "${TERR}failed url: \033[4m$1$C"
    exit 2
  fi
}
# $ path to file
function installpkg()
{
  if [[ $UNME == 'osx' ]]; then
    sudo installer -pkg $1 -target /
  fi
}
# $ path to file
function mountdmg()
{
  sudo hdiutil attach $1
}
# $ filename
function unmountdmg()
{
  sudo hdiutil detach "/Volumes/${1%'.dmg'}"
}
# FUNCTIONS =====================================
