#!/bin/bash

echo "${CTI} tmux $C"
#greet

function instaltmux() {
  case #UNME in
  "osx")
    brew install tmux
    ;;
  "ubu")
    sudo apt-get install tmux
    ;;
  esac
}

ifdontexist tmux installtmux
