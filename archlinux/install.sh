#!/usr/bin/env bash

echo "#########################"
echo "### ARCH LINUX SETUP  ###"
echo "#########################"
echo ""

./pre_install.sh
./aur_install.sh
./pacman_install.sh

sudo pacman -Sc
yay -Sc
