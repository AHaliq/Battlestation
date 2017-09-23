#!/bin/bash

OSXVER=$(sw_vers -productVersion)
# VARS ==========================================

POSXCLT="/Library/Developer/CommandLineTools"
# from https://github.com/macports/macports-base/releases/
POSXPORT="https://github.com/macports/macports-base/releases/download/v2.4.1/"	
FOSXMP=""
# PATHS =========================================

echo "$CTI osx $C version ${CHI}${OSXVER}${C}"
# greet

if [[ ! -d $POSXCLT ]]; then
  echo "${TCB}install xcode"
  xcode-select --install > /dev/null
fi
# install xcode ctl

function osxinstallport () {
  case $OSXVER in
    '10.12.'*)
      FOSXMP="MacPorts-2.4.1-10.12-Sierra.pkg"
      ;;
    '10.11.'*)
      FOSXMP="MacPorts-2.4.1-10.11-ElCapitan.pkg"
      ;;
    *)
      echo "${TERR}unexpected osx version"
      exit 1
      ;;
  esac
  download "$POSXPORT$FOSXMP" "./$FOSXMP"
  installpkg "./$FOSXMP"
  addpath "/opt/local/bin"
}
ifdontexist port osxinstallport
