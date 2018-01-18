#!/usr/bin/env bash

# SCRIPT NAME: setup.sh
# CREATION DATE: 2018-01-08
#
#
# DESCRIPTION: This script prepares my environment to work
#
# AUTHOR: Filipe Lemos <contato@filipelemos.com>
# AUTHOR URL: filipelemos.com

clear

echo "STARTING DOTFILES SETUP PROCESS"
sudo -v

# Update sudo while the script is running
while true; do sudo -n true; sleep 30; kill -0 "$$" || exit; done 2>/dev/null &

case ${OSTYPE} in
  darwin*)
    . install/macos/brew
    . install/macos/brewcask
    . install/macos/macos_setup
    ;;
  *)
    echo "Unknown operating system: $OSTYPE. Aborting" && exit 1
    ;;
esac

. install/common/symlink_files
. install/common/vim_setup
. install/common/zsh_setup

. ~/.zshrc

echo "DOTFILES SETUP PROCESS FINISHED"
