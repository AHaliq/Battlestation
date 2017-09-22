#!/bin/bash

OSXVER=$(sw_vers -productVersion)
OSXPORT=""
# VARS ==========================================

COSX=" ${CBLU} OSX ${C}"
COSXB=" ${CBLU}     ${C}"
# TEXT ==========================================

echo "${COSX}version ${CHI}${OSXVER}${C}"
# greet

echo "${COSXB}install xcode"
xcode-select --install
# install xcode

if [[ $OSXVER == "10.11"* ]]; then
    OSXPORT="https://github.com/macports/macports-base/releases/download/v2.4.1/MacPorts-2.4.1-10.11-ElCapitan.pkg"	
    echo "${COSXB}downloading MacPorts-2.4.1-10.11.ElCapitan.pkg"
else
    echo "${TERR}unexpected osx version"
    exit 1
fi
cd "${TDIR}/bin"
curl -sL $OSXPORT -o ./MacPorts-2.4.1.pkg -D ./out
# download pkg from https://github.com/macports/macports-base/releases/

if grep -q "200 OK" "./out"; then
    echo "${COSXB}download success; begin installation"
else
    echo "${TERR}problem downloading MacPorts from ${CHI}${OSXPORT}${C}"
    exit 2
fi
# check valid download

# sudo installer -pkg /path/to/package.pkg -target /
echo "${COSXB}installed macports successfully"
# install macports
