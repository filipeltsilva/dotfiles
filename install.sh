#!/usr/bin/env bash

# SCRIPT NAME: setup.sh
# CREATION DATE: 2016-10-25
#
#
# DESCRIPTION: This script prepares my environment to work
#
# AUTHOR: Filipe Lemos <contato@filipelemos.com>
# AUTHOR URL: filipelemos.com

clear

. install/messages

message_info "STARTING DOTFILES SETUP PROCESS"
sudo -v

# Update sudo while the script is running
while true; do sudo -n true; sleep 30; kill -0 "$$" || exit; done 2>/dev/null &

. install/brewcask
. install/brew

. install/sublimetext_setup
. install/symlink_files
. install/vim_setup
. install/zsh_setup

./osx_setup.sh

. ~/.zshrc

message_okay "DOTFILES SETUP PROCESS FINISHED"
