#!/bin/bash

OSXVER=$(sw_vers -productVersion)
OSXPORT=""
# VARS ==========================================

TOSXG=" OSX "
COSX=" ${CBLU}${TOSXG}${C}"
COSXB=" ${CBLU}$(blanks "${TOSXG}")${C}"

TOSXMP=""
# TEXT ==========================================

echo "${COSX}version ${CHI}${OSXVER}${C}"
# greet

echo "${COSXB}install xcode"
xcode-select --install
# install xcode

if [[ $OSXVER == "10.11"* ]]; then
    OSXPORT="https://github.com/macports/macports-base/releases/download/v2.4.1/MacPorts-2.4.1-10.11-ElCapitan.pkg"	
    TOSXMP="MacPorts-2.4.1-10.11-ElCapitan.pkg"
    echo "${COSXB}downloading MacPorts-2.4.1-10.11.ElCapitan.pkg"
else
    echo "${TERR}unexpected osx version"
    exit 1
fi
download "$OSXPORT" "./$TOSXMP" "$COSXB" "MacPorts from ${CHI}${OSXPORT}${C}"
# installpkg "./$TOSXMP" << TODO
echo "${COSXB}installed macports successfully"
# install macports pkg from https://github.com/macports/macports-base/releases/
