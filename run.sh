#!/bin/bash

UNME=$(uname -v)
SDIR=$(pwd)
TDIR=$(cd $(dirname "$0") && pwd -P)
DDIR="${TDIR}/bin"
# VARS ==========================================

source "${TDIR}/src/main/header.sh"
source "${TDIR}/src/main/install.sh"

#source "${TDIR}/src/os/osx/uninstall/uninstallctl.sh"
#source "${TDIR}/src/os/osx/uninstall/uninstallmacports.sh"
#source "${TDIR}/src/os/osx/uninstall/uninstallbrew.sh"
#source "${TDIR}/src/app/vagrant/uninstall/uninstallvbox.sh"
#source "${TDIR}/src/app/vagrant/uninstall/uninstallvagrant.sh"
