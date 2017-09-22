#!/bin/bash

OSXVER=$(sw_vers -productVersion)
# VARS ==========================================

POSXPORT=""
FOSXMP=""
# PATHS =========================================

TOSXG=" OSX "
TOSX=" ${CBLU}${TOSXG}${C}"
# TEXT ==========================================

echo "${TOSX}version ${CHI}${OSXVER}${C}"
# greet

echo "${TCB}install xcode"
xcode-select --install
# install xcode

if [[ $OSXVER == "10.11"* ]]; then
    POSXPORT="https://github.com/macports/macports-base/releases/download/v2.4.1/MacPorts-2.4.1-10.11-ElCapitan.pkg"	
    FOSXMP="MacPorts-2.4.1-10.11-ElCapitan.pkg"
else
    echo "${TERR}unexpected osx version"
    exit 1
fi
download "$POSXPORT" "./$FOSXMP"
# installpkg "./$FOSXMP" << TODO
echo "${TCB}installed macports successfully"
# install macports pkg from https://github.com/macports/macports-base/releases/
