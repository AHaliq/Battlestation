#!/bin/bash

echo "${CTI} vim8 $C"
#greet

#detect vim7 query to remove it, source uninstall script
#/usr/share/vim
#/usr/bin/vim

function installvim () {
  case $UNME in
  "osx")
  	;;
  "ubu")
   echo "${TCB}installing dependencies"
   sudo apt-get -yqq install libncurses5-dev python-dev python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev
    ;;
  esac
  # install dependencies

  usebin
  git clone https://github.com/vim/vim.git
  cd vim
  ./configure \
   --with-features=huge \
   --enable-multibyte \
   --enable-rubyinterp=yes \
   --enable-pythoninterp=yes \
   --with-python-config-dir=/usr/lib/python2.7/config \
   --enable-python3interp=yes \
   --with-python3-config-dir=/usr/lib/python3.2/config \
   --enable-perlinterp=yes \
   --enable-luainterp=yes \
   --enable-cscope \
   --prefix=/usr/local
  make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
  sudo make install
  # make; ensure path /usr/local/bin/vim
}

if [[ ! -d '/usr/local/bin/vim' ]]; then
  installvim
fi
#detect vim8
