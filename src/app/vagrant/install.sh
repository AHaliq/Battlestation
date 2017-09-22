#!/bin/bash

PVAGVB="http://download.virtualbox.org/virtualbox/5.1.28/VirtualBox-5.1.28-117968-OSX.dmg"
FVAGPK="VirtualBox-5.1.28-117968-OSX.dmg"
# PATHS =========================================

TVAGG=" VAGRANT "
TVAG=" ${CBLU}${TVAGG}${C}"
# TEXT ==========================================

if [[ $UNME == 'osx' ]]; then
  echo "${TVAG}for OSX"
  echo "${TCB}downloading virtualbox"
  download "$PVAGVB" "$FVAGPK"
  # mountdmg "./$FVAGPK" << TODO
  # installpkg '/Volumes/VirtualBox.pkg'
  # unmountdmg $FVAGPK
  echo "${TCB}downloading vagrant"
fi
