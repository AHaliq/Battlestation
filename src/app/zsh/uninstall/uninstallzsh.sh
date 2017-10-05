#!/bin/bash

function osxuninstallzsh ()
{
  brew uninstall zsh --force
  sudo chsh -s $(which bash) $USER
}
ifexist zsh osxuninstallzsh
