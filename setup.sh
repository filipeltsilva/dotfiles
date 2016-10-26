#!/usr/bin/env bash

# SCRIPT NAME: setup.sh
# CREATION DATE: 2016-10-25
#
#
# DESCRIPTION: This script prepares my environment to work
#
# AUTHOR: Filipe Lemos

clear

. lib/messages
. lib/symlink_files
. lib/symlink_folders

message_info "STARTING DOTFILES SETUP PROCESS"
sudo -v

while true; do
  sudo -n true; sleep 60; kill -0 "$$" || exit;
done 2>/dev/null &

. lib/brew_setup
# . lib/git_setup
# . lib/sublimetext_setup
# . lib/vim_setup
# . lib/zsh_setup

# source $HOME/.zshrc

message_okay "DOTFILES SETUP PROCESS FINISHED"
