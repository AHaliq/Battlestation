#!/bin/bash

TVAGVB="http://download.virtualbox.org/virtualbox/5.1.28/VirtualBox-5.1.28-117968-OSX.dmg"
# PATHS =========================================

TVAGG=" VAGRANT(${UNME}) "
CVAG=" ${CBLU}${TVAGG}${C}"
CVAGB=" ${CBLU}$(blanks ${TVAGG})${C}"
# TEXT ==========================================

if [[ $UNME == 'osx' ]]; then
  echo "${CVAG}downloading virtualbox"
  download "$TVAGVB" "VirtualBox-5.1.28-117968-OSX.dmg" "${CVAGB}" "VirtualBox from ${CHI}${TVAGVB}${C}"

  echo "${CVAGB}downloading vagrant"
fi
