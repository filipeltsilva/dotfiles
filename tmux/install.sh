#!/usr/bin/env bash

echo "##################"
echo "### TMUX SETUP ###"
echo "##################"
echo ""

if [[ ! -d $HOME/.tmux/plugins/tpm ]]
then
  git clone https://github.com/tmux-plugins/tpm "$HOME"/.tmux/plugins/tpm

  ln -sfnv "$PWD"/.tmux.conf "$HOME"/.tmux.conf
else
  echo "Nothing to do here!"
fi
