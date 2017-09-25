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

function osxinstallbrew () {
  echo "${TCB}install homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  # from https://brew.sh
}
ifdontexist brew osxinstallbrew
# install homebrew

if [[ ! -d '/Applications/iTerm.app' ]]; then
  download "$POSXTERM$FOSXTERM" "${DDIR}/$FOSXTERM"
  unzip "${DDIR}/$FOSXTERM" -d "/Applications/" > /dev/null
  echo "${TCB}set iTerm2 > Preferences > Load pref.. to [${TDIR}/lib/scripts/]"
fi
#install iterm
