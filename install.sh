#!/usr/bin/env bash

./archlinux/pre_install.sh
./archlinux/aur_install.sh
./archlinux/pacman_install.sh

./git/install.sh
./nano/install.sh
./tmux/install.sh
./zsh/install.sh

echo "Done!"
