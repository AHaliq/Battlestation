#!/bin/bash

#function osxuninstallzsh ()
#{
#  brew uninstall zsh --force
#  sudo chsh -s $(which bash) $USER
#}
#ifexist zsh osxuninstallzsh
if [ -d "$HOME/.oh-my-zsh" ]; then
  bash ~/.oh-my-zsh/tools/uninstall.sh
fi
