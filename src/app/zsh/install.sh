#!/bin/bash

echo "${CTI} z shell $C"

if [[ $UNME == 'osx' ]]; then
  brew install zsh
  sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh
elif [[ $UNME == 'ubu' ]]; then
  sudo apt-get -yqq update
  sudo apt-get -yqq upgrade
  sudo apt-get -yqq install zsh
  #/etc/passwd change username's shell to zsh
fi
