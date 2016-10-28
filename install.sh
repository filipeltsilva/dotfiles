#!/usr/bin/env bash

# SCRIPT NAME: setup.sh
# CREATION DATE: 2016-10-25
#
#
# DESCRIPTION: This script prepares my environment to work
#
# AUTHOR: Filipe Lemos

clear

. install/messages
. install/symlink_files
. install/symlink_folders

message_info "STARTING DOTFILES SETUP PROCESS"
sudo -v

# Update sudo while the script is running
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# . install/brew_setup
message_info "HOMEBREW SETUP"
# if [[ ! -f $(which brew) ]]; then
  . install/brew
  . install/brewcask
# else
#  message_okay "Homebrew is already installed in this system"
#fi

# . install/git_setup
# . install/sublimetext_setup
# . install/vim_setup
# . install/zsh_setup

# . install/osx_setup

#source $HOME/.zshrc

message_okay "DOTFILES SETUP PROCESS FINISHED"
