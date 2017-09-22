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

function osxinstallctl () {
  echo "${TCB}install xcode"
  xcode-select --install > /dev/null
}
ifdontexist git osxinstallctl

function osxinstallport () {
  if [[ $OSXVER == "10.11"* ]]; then
    FOSXMP="MacPorts-2.4.1-10.11-ElCapitan.pkg"
  else
    echo "${TERR}unexpected osx version"
    exit 1
  fi
  download "$POSXPORT$FOSXMP" "./$FOSXMP"
# installpkg "./$FOSXMP" << TODO
}
ifdontexist port osxinstallport
