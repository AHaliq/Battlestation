#!/bin/bash

OSXVER=$(sw_vers -productVersion)
# VARS ==========================================

POSXCLT="/Library/Developer/CommandLineTools"
# from https://github.com/macports/macports-base/releases/
POSXPORT="https://github.com/macports/macports-base/releases/download/v2.4.1/"	
FOSXMP=""
# from https://www.iterm2.com/downloads.html
POSXTERM="https://iterm2.com/downloads/stable/"
FOSXTERM="iTerm2-3_1_1.zip"
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
  download "$POSXPORT$FOSXMP" "${DDIR}/$FOSXMP"
  installpkg "${DDIR}/$FOSXMP"
  addpath "/opt/local/bin"
}
ifdontexist port osxinstallport
# install macports

if [[ ! -d '/Applications/iTerm.app' ]]; then
  download "$POSXTERM$FOSXTERM" "${DDIR}/$FOSXTERM"
  unzip "${DDIR}/$FOSXTERM" -d "/Applications/" > /dev/null
  echo "${TCB}set iTerm2 > Preferences > Load pref.. to [${TDIR}/lib/scripts/]"
fi
#install iterm
