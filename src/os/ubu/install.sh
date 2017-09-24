#!/bin/bash

UBU_VER="$(lsb_release -rs)"
# VARS ==========================================

echo "$CTI UBUNTU $C version $CHI$UBU_VER$C"

echo "${TCB} update apt-get"
sudo apt-get -yqq update
