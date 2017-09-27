#!/bin/bash

# from https://www.virtualbox.org
PVAGVB="http://download.virtualbox.org/virtualbox/5.1.28/VirtualBox-5.1.28-117968-OSX.dmg"
PVAGVBVOL="VirtualBox"
FVAGPK="VirtualBox-5.1.28-117968-OSX.dmg"
# from https://releases.hashicorp.com/vagrant/
PVAGVG="https://releases.hashicorp.com/vagrant/2.0.0/"
PVAGVGVOL="Vagrant"
FVAGVGDMG="vagrant_2.0.0_x86_64.dmg"

# PATHS =========================================

echo "${CTI} vagrant $C"
#greet

case $UNME in
'osx')
  if [[ ! -d '/Applications/VirtualBox.app' ]]; then
    download "$PVAGVB" "$FVAGPK"
    mountdmg "${DDIR}/$FVAGPK"
    installpkg "/Volumes/$PVAGVBVOL/VirtualBox.pkg"
    unmountdmg $PVAGVBVOL
  fi
  # install virtualbox
  
  if [[ ! -d '/opt/vagrant/' ]]; then
    download "$PVAGVG$FVAGVGDMG" $FVAGVGDMG
    mountdmg "${DDIR}/$FVAGVGDMG"
    installpkg "/Volumes/$PVAGVGVOL/vagrant.pkg"
    unmountdmg "$PVAGVGVOL"
  fi
  # install vagrant
  ;;
'ubu')
  echo "${TCB}not implemented"
  ;;
esac
