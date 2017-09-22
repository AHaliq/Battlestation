#!/bin/bash

PVAGVB="http://download.virtualbox.org/virtualbox/5.1.28/VirtualBox-5.1.28-117968-OSX.dmg"
PVAGVBVOL="VirtualBox"
FVAGPK="VirtualBox-5.1.28-117968-OSX.dmg"
# PATHS =========================================

echo "${CTI} vagrant $C"
#greet

if [[ $UNME == 'osx' ]]; then
  function vagrantosxinstallvb ()
  {
    download "$PVAGVB" "$FVAGPK"
    mountdmg "./$FVAGPK"
    installpkg '/Volumes/VirtualBox.pkg'
    unmountdmg $PVAGVBVOL
  }
  ifdontexist VBoxManage vagrantosxinstallvb

  # download vagrant
fi
