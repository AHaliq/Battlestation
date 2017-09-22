#!/bin/bash

TVAGVB="http://download.virtualbox.org/virtualbox/5.1.28/VirtualBox-5.1.28-117968-OSX.dmg"
# PATHS =========================================

TVAGG=" VAGRANT(${UNME}) "
CVAG=" ${CBLU}${TVAGG}${C}"
CVAGB=" ${CBLU}$(blanks ${TVAGG})${C}"

TVAGPK="VirtualBox-5.1.28-117968-OSX.dmg"
# TEXT ==========================================

if [[ $UNME == 'osx' ]]; then
  echo "${CVAG}downloading virtualbox"
  download "$TVAGVB" "$TVAGPK" "$CVAGB" "VirtualBox from ${CHI}${TVAGVB}${C}"
  # mountdmg "./$TVAGPK" << TODO
  # installpkg '/Volumes/VirtualBox.pkg'
  # unmountdmg $TVAGPK
  echo "${CVAGB}downloading vagrant"
fi
