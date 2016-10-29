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

if [[ -d ${DOTFILES} ]]; then
  echo "Filipe Lemos' dotfiles is already configured in this system"
else
  mkdir -p ${DOTFILES} && cd ${DOTFILES}
  curl -#L https://github.com/filipeltsilva/dotfiles/tarball/master > dotfiles.tar.gz
  tar -zxvf files.tar.gz -C ${DOTFILES} --strip-components=1 && rm -f dotfiles.tar.gz
  ./install.sh
fi
