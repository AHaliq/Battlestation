#!/bin/bash

CHI='\033[4m'
CTI='\033[0;37;40m'
C='\033[0m'
# ANSI COL ======================================

TERR="\033[0;37;41m ERROR $C "
TCB=" $CTI $C "
TCQ=" \033[0;0;43m $C "
TCD=" \033[0;0;44m $C "
TCG=" \033[0;30;42m $C "
# TEXT ==========================================

function query()
{
  printf "${TCQ}$1 "
  read -p "[Y/n]: " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    eval $2
  fi
}
function usebin()
{
    rm -rf "$TDIR/bin/"
    mkdir "$TDIR/bin"
    cd "$TDIR/bin"
}
# $ command, func if doesnt exist
function ifdontexist()
{
  command -v $1 >/dev/null 2>&1 || { eval $2 >&2; }
}
# $ url, path file out
function download()
{ 
  usebin
  echo "${TCD}download: ${CHI}$2$C"
  curl -sL $1 -o $2 -D ./out
  if ! grep -q "200 OK" "./out"; then
    echo "${TERR}download: ${CHI}$1$C"
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
  echo "${TCB}mount: ${CHI}$1$C"
  if [[ $UNME == 'osx' ]]; then
    sudo hdiutil attach $1 > /dev/null
  fi
}
# $ volume directory
function unmountdmg()
{
  echo "${TCB}unmount: ${CHI}$1$C"
  if [[ $UNME == 'osx' ]]; then
    sudo hdiutil detach "/Volumes/$1" > /dev/null
  fi
}
# FUNCTIONS =====================================
