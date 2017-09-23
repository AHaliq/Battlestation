#!/bin/bash

rm -rf /Library/Developer/CommandLineTools
# xcode CTL

function osxuninstallport () {
  sudo rm -rf \
    /opt/local \
    /Applications/DarwinPorts \
    /Applications/MacPorts \
    /Library/LaunchDaemons/org.macports.* \
    /Library/Receipts/DarwinPorts*.pkg \
    /Library/Receipts/MacPorts*.pkg \
    /Library/StartupItems/DarwinPortsStartup \
    /Library/Tcl/darwinports1.0 \
    /Library/Tcl/macports1.0 \
    ~/.macports
  sudo pkgutil --forget org.macports.MacPorts
}
ifexist port osxuninstallport
# https://guide.macports.org/#installing.macports.uninstalling
