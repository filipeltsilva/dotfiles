#!/usr/bin/env bash

# SCRIPT NAME: pre_install
# CREATION DATE: 2016-10-28
#
#
# DESCRIPTION: Runs the dotfiles pre-installation routine, downloading the repository without using Git
#
# AUTHOR: Filipe Lemos <contato@filipelemos.com>
# AUTHOR URL: filipelemos.com

function cloneDotfiles() {
  git clone git@github.com:filipeltsilva/dotfiles ~/.dotfiles
  runInstall
}

function runInstall() {
  cd ~/.dotfiles && ./install.sh
}

case ${OSTYPE} in
  darwin*)
    if [[ ! -f $(which brew) ]]; then
      echo "Downloading and installing Homebrew" && sleep 2
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

      brew install git
      cloneDotfiles
    else
      echo "Homebrew is already installed in this system"
    fi
    ;;
  *)
    echo "Unknown operating system: $OSTYPE. Aborting" && exit 1
    ;;
esac
