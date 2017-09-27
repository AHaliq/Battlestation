#!/bin/bash

echo "${CTI} z shell $C"

case $UNME in
'osx')
  if [[ ! -f /bin/zsh ]]; then
    echo "${TCB}brew install zsh"
    brew install zsh
  fi
  ;;
'ubu')
  echo "${TCB}sudo apt-get install zsh"
  sudo apt-get -yqq install zsh
  ;;
esac

echo "${TCB}set ${CHI}zsh$C as default shell"
sudo chsh -s $(which zsh) $USER
