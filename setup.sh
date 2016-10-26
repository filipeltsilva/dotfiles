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

message_info "STARTING DOTFILES SETUP PROCESS"
sudo -v

. lib/brew_setup
. lib/git_setup
. lib/sublimetext_setup
. lib/vim_setup
. lib/zsh_setup

. $HOME/.zshrc

message_okay "DOTFILES SETUP PROCESS FINISHED"
