#!/bin/bash

if [ -d "/usr/local/share/vim/vim81" ]; then
  echo "im in"
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
  sudo make uninstall
fi
