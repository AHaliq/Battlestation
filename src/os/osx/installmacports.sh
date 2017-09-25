#!/bin/bash

function osxinstallport () {
  case $OSXVER in
    '10.12.'*)
      FOSXMP="MacPorts-2.4.1-10.12-Sierra.pkg"
      ;;
    '10.11.'*)
      FOSXMP="MacPorts-2.4.1-10.11-ElCapitan.pkg"
      ;;
    *)
      echo "${TERR}unexpected osx version"
      exit 1
      ;;
  esac
  download "$POSXPORT$FOSXMP" "${DDIR}/$FOSXMP"
  installpkg "${DDIR}/$FOSXMP"
  addpath "/opt/local/bin"
}
ifdontexist port osxinstallport
# install macports
