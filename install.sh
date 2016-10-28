#!/usr/bin/env bash

# SCRIPT NAME: setup.sh
# CREATION DATE: 2016-10-25
#
#
# DESCRIPTION: This script prepares my environment to work
#
# AUTHOR: Filipe Lemos

clear

. lib_shell/messages
. lib_shell/symlink_files
. lib_shell/symlink_folders

message_info "STARTING DOTFILES SETUP PROCESS"
sudo -v

while true; do
  sudo -n true; sleep 60; kill -0 "$$" || exit;
done 2>/dev/null &

# . lib_shell/brew_setup
# . lib_shell/git_setup
# . lib_shell/sublimetext_setup
# . lib_shell/vim_setup
# . lib_shell/zsh_setup

. lib_shell/osx_setup

#source $HOME/.zshrc

message_okay "DOTFILES SETUP PROCESS FINISHED"
