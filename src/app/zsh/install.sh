#!/bin/bash

FZSHOSXBIN="/usr/local/bin/zsh"
# PATHS =========================================

echo "${CTI} z shell $C"

case $UNME in
'osx')
  if [[ ! -f $FZSHOSXBIN ]]; then
    echo "${TCB}brew install zsh"
    brew install zsh
    echo "${TCB}set ${CHI}zsh$C as default shell"
    sudo chsh -s $FZSHOSXBIN $USER
  fi
  ;;
'ubu')
  echo "${TCB}sudo apt-get install zsh"
  sudo apt-get -yqq install zsh
  echo "${TCB}set ${CHI}zsh$C as default shell"
  sudo chsh -s $(which zsh) $USER
  ;;
esac

