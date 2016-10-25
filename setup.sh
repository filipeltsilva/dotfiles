#!/usr/bin/env bash

# SCRIPT NAME: setup.sh
# CREATION DATE: 2016-10-25
#
#
# DESCRIPTION: This script prepares my environment to work.
#
# AUTHOR: Filipe Lemos

. lib/messages

message_info "STARTING DOTFILE SETUP PROCESS"
sudo -v

. lib/brew_setup
. lib/git_setup
. lib/sublimetext_setup
. lib/vim_setup
. lib/zsh_setup

brew_setup
git_setup
vim_setup
zsh_setup

source $HOME/.zshrc

message_okay "DOTFILES SETUP PROCESS FINISHED"
