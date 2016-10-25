#!/usr/bin/env bash

# SCRIPT NAME: setup.sh
# CREATION DATE: 2016-10-25
#
#
# DESCRIPTION: This script prepares my environment to work.
#
# AUTHOR: Filipe Lemos

. lib/messages

. lib/brew_setup
. lib/git_setup
. lib/vim_setup
. lib/zsh_setup

message_info "STARTING SETUP PROCESS"
sudo -v

brew_setup
git_setup
vim_setup
zsh_setup
