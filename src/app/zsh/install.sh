#!/bin/bash

echo "${CTI} z shell $C"

if [[ $UNME == 'osx' ]]; then
  if [[ ! -f /bin/zsh ]]; then
    echo "${TCB}brew install zsh"
    brew install zsh
  fi
elif [[ $UNME == 'ubu' ]]; then
  echo "${TCB}sudo apt-get install zsh"
  sudo apt-get -yqq install zsh
fi

echo "${TCB}set ${CHI}zsh$C as default shell"
chsh -s $(which zsh) $USER
