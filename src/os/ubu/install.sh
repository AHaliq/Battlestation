#!/bin/bash

UBU_VER="$(lsb_release -rs)"
# VARS ==========================================

echo "$CTI UBUNTU $C version $CHI$UBU_VER$C"

echo "${TCB}apt-get update"
sudo apt-get -yqq update
echo "${TCB}apt-get install ..."
