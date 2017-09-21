#!/bin/bash

OSXVER=$(sw_vers -productVersion)
OSXPORT=""
# VARS ==========================================

echo " ${CBLU} OSX ${C}version ${CHI}${OSXVER}${C}"

if [[ $OSXVER == "10.11"* ]]; then
    OSXPORT="https://github.com/macports/macports-base/releases/download/v2.4.1/MacPorts-2.4.1-10.11-ElCapitan.pkg"	
    echo " ${CBLU} OSX ${C}downloading MacPorts-2.4.1-10.11.ElCapitan.pkg"
else
    echo " ${TERR}unexpected osx version"
    exit 1
fi
cd "${TDIR}/bin"
curl -sL $OSXPORT -o ./MacPorts-2.4.1.pkg -D ./out
# download pkg from https://github.com/macports/macports-base/releases/

if grep -q "200 OK" "./out"; then
    echo " ${CBLU} OSX ${C}download success"
else
    echo " ${TERR}problem downloading MacPorts from ${CHI}${OSXPORT}${C}"
    exit 2
fi
# check valid download

# TODO: detect 
# install
