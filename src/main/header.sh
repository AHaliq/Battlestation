#!/bin/bash

CHI=$(tput smul)
CTI="$(tput setab 0)$(tput setaf 7)"
C='\033[0m'
# ANSI COL ======================================

TERR="\033[0;37;41m ERROR $C "
TCB=" $CTI $C "
TCP=" \033[0;0;46m $C "
TCQ=" \033[0;0;43m $C "
TCD=" \033[0;0;44m $C "
TCG=" \033[0;30;42m $C "
# TEXT ==========================================

FPRO=""
# FILES =========================================

function query ()
{
  printf "${TCQ}$1 "
  read -p "[Y/n]: " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    eval $2
  fi
}
function usebin ()
{
    sudo rm -rf "$TDIR/bin/"
    mkdir "$TDIR/bin"
    cd "$TDIR/bin"
}
# $ command, func if doesnt exist
function ifdontexist ()
{
  command -v $1 >/dev/null 2>&1 || { eval $2 >&2; }
}
function ifexist ()
{
  EXISTS=0
  function setexist () { EXISTS=1; }
  ifdontexist $1 setexist
  if [[ $EXISTS == 0 ]]; then
    eval $2
  fi
}
function addpath ()
{
  if [[ ":$PATH:" != *":$1:"* ]]; then
    if [[ $UNME == 'osx'  ]]; then
      FPRO="$HOME/.bash_profile"
    fi
    if [[ ! -f $FPRO ]]; then
      printf 'export PATH=$PATH' > $FPRO
      echo "${TCB} created ${CHI}$FPRO$C"
    fi
    printf ":$1" >> $FPRO
    echo "${TCB} added ${CHI}$1$C to PATH env var"
    . $FPRO
  fi
}
# $ url, path file out
function download ()
{ 
  DOWNLOADPREDIR=$(pwd)
  echo "${TCD}download: ${CHI}$2$C"
  usebin
  curl -sL $1 -o $2 -D ./out
  if ! grep -q "200 OK" "./out"; then
    echo "${TERR}download: ${CHI}$1$C"
    exit 2
  fi
  cd $DOWNLOADPREDIR
}
# $ path to file
function installpkg ()
{
  echo "${TCP}installpkg: ${CHI}$1$C"
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
