#!/usr/bin/env bash

echo "TMUX SETUP"
if [ ! -d "$HOME/.tmux/plugins/tpm" ]
then
  git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
else
  echo "Tmux is already installed and configured in this system"
fi

ln -sfnv $PWD/.tmux.conf $HOME/.tmux.conf
