#!/bin/bash

FZSHOSXBIN="/usr/local/bin/zsh"
DZSHCONF="~/.oh-my-zsh"
# PATHS =========================================

echo "${CTI} z shell $C"

if [[ ! -d $DZSHCONF ]]; then
  sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  cd "${TDIR}/"
fi
#install

#case $UNME in
#'osx')
#  if [[ ! -f $FZSHOSXBIN ]]; then
#    echo "${TCB}brew install zsh"
#    brew install zsh
#    echo "${TCB}set ${CHI}zsh$C as default shell"
#    sudo chsh -s $FZSHOSXBIN $USER
#  fi
#  ;;
#'ubu')
#  echo "${TCB}sudo apt-get install zsh"
#  sudo apt-get -yqq install zsh
#  echo "${TCB}set ${CHI}zsh$C as default shell"
#  sudo chsh -s $(which zsh) $USER
#  ;;
#esac

