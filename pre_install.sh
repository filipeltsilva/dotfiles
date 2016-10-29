#!/usr/bin/env bash

# SCRIPT NAME: remote_install
# CREATION DATE: 2016-10-28
#
#
# DESCRIPTION: Runs the dotfiles pre-installation routine, downloading the repository without using Git
#
# AUTHOR: Filipe Lemos <contato@filipelemos.com>
# AUTHOR URL: filipelemos.com

DOTFILES=$HOME/.dotfiles

cd $HOME
mkdir -p ${DOTFILES}
curl -#L https://github.com/filipeltsilva/dotfiles/tarball/master > dotfiles.tar.gz
tar -zxvf files.tar.gz -C ${DOTFILES} --strip-components=1 && rm -f dotfiles.tar.gz
cd ${DOTFILES} && ./install.sh
