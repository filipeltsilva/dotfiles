#!/usr/bin/env bash

echo "#########################"
echo "### ARCH LINUX SETUP  ###"
echo "#########################"
echo ""

./pre_install
./aur_install
./pacman_install

yay -Sc
