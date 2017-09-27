#!/bin/bash

UBU_VER="$(lsb_release -rs)"
# VARS ==========================================

echo "$CTI UBUNTU $C version $CHI$UBU_VER$C"

echo "${TCB}apt-get update"
sudo apt-get -yqq update
sudo apt-get -yqq upgrade
echo "${TCB}installing ${CHI}git, curl, make$C"
sudo apt-get -yqq install git curl make
