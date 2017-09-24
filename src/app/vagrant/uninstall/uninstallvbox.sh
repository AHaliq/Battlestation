#!bin/bash

function osxuninstallvbox () {
  sudo rm -rf /Library/Application\ Support/VirtualBox
  sudo pkgutil --forget org.virtualbox.pkg.vboxkexts
  #vboxkexts
  sudo rm -rf "/Applications/VirtualBox.app"
  sudo rm -rf "$HOME/Library/VirtualBox"
  sudo rm -rf "$HOME/Library/Preferences/org.VirtualBox.app.VirtualBox.plist"
  sudo rm -rf "$HOME/Library/Saved\ Application\ State/org.Virtualbox.app.VirtualBox.SavedState"
  sudo rm -rf "$HOME/Library/LaunchAgents/org.virtualbox.vboxwebsrv.plist"
  sudo pkgutil --forget org.virtualbox.pkg.virtualbox
  # virtualbox: https://www.iterm2.com/downloads.html
  sudo rm -rf /usr/local/bin/VBoxAutostart
  sudo rm -rf /usr/local/bin/VBoxBalloonCtrl
  sudo rm -rf /usr/local/bin/VBoxBugReport
  sudo rm -rf /usr/local/bin/VBoxDTrace
  sudo rm -rf /usr/local/bin/VBoxHeadless
  sudo rm -rf /usr/local/bin/VBoxManage
  sudo rm -rf /usr/local/bin/VBoxVRDP
  sudo rm -rf /usr/local/bin/VirtualBox
  sudo rm -rf /usr/local/bin/vbox-img
  sudo rm -rf /usr/local/bin/vboxwebsrv
  sudo pkgutil --forget org.virtualbox.pkg.virtualboxcli
  # virtualboxcli
}
ifexist VBoxManage osxuninstallvbox
