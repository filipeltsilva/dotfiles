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
. install/symlink_files
. install/symlink_folders

message_info "STARTING DOTFILES SETUP PROCESS"
sudo -v

# Update sudo while the script is running
while true; do sudo -n true; sleep 30; kill -0 "$$" || exit; done 2>/dev/null &

message_info "HOMEBREW SETUP"
if [[ ! -f $(which brew) ]]; then
  . install/brew
  . install/brewcask
else
  message_okay "Homebrew is already installed in this system"
fi

. install/git_setup
. install/sublimetext_setup
. install/vim_setup
. install/zsh_setup

. install/osx_setup

source ~/.zshrc

message_info "DOTFILES POST-INSTALLATION ROUTINE"
git remote add origin git@github.com:filipeltsilva/dotfiles.git

message_okay "DOTFILES SETUP PROCESS FINISHED"
