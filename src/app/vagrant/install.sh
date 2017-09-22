#!/bin/bash

PVAGVB="http://download.virtualbox.org/virtualbox/5.1.28/VirtualBox-5.1.28-117968-OSX.dmg"
PVAGVBVOL="VirtualBox"
FVAGPK="VirtualBox-5.1.28-117968-OSX.dmg"
# PATHS =========================================

echo "${CTI} vagrant $C"
#greet

if [[ $UNME == 'osx' ]]; then
  download "$PVAGVB" "$FVAGPK"
  mountdmg "./$FVAGPK"
  # installpkg '/Volumes/VirtualBox.pkg' << TODO
  unmountdmg $PVAGVBVOL

  # download vagrant
fi
