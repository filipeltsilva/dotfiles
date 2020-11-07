#!/usr/bin/env bash

echo "TMUX SETUP"

echo "Installing TPM"
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

echo "Creating links"
ln -sfnv $PWD/.tmux.conf $HOME/.tmux.conf
