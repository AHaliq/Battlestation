#!/bin/bash

echo "${CTI} vim8 $C"
#greet

#detect vim7 query to remove it, source uninstall script
#/usr/share/vim
#/usr/bin/vim

#detect vim8
case $UNME in
"osx")
	;;
"ubu")
  echo "${TCB}installing dependencies"
  sudo apt-get -yqq install libncurses5-dev python-dev python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev
  ;;
esac
# install dependencies

#install make
