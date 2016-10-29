#!/usr/bin/env bash

# SCRIPT NAME: remote_install
# CREATION DATE: 2016-10-28
#
#
# DESCRIPTION: Runs the dotfiles pre-installation routine, downloading the repository without using Git
#
# AUTHOR: Filipe Lemos <contato@filipelemos.com>
# AUTHOR URL: filipelemos.com

cd $HOME

curl -L https://github.com/filipeltsilva/dotfiles/zipball/master > dotfiles.zip
unzip dotfiles.zip && mv filipeltsilva* .dotfiles
cd $HOME/.dotfiles && ./install.sh
