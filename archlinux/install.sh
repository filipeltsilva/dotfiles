#!/usr/bin/env bash

echo "#########################"
echo "### ARCH LINUX SETUP  ###"
echo "#########################"
echo ""

. aur_setup
. pacman_setup

sudo pacman -Sc
