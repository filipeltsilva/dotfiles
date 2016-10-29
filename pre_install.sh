#!/usr/bin/env bash

# SCRIPT NAME: pre_install
# CREATION DATE: 2016-10-28
#
#
# DESCRIPTION: Runs the dotfiles pre-installation routine, downloading the repository without using Git
#
# AUTHOR: Filipe Lemos <contato@filipelemos.com>
# AUTHOR URL: filipelemos.com

cd $HOME

curl -L https://github.com/filipeltsilva/dotfiles/zipball/master > dotfiles.zip
unzip dotfiles.zip && rm -f dotfiles.zip
mv filipeltsilva* dotfailes
cd $HOME/dotfailes && ./install.sh
