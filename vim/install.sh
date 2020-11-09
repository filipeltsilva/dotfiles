#!/usr/bin/env bash

echo "VIM SETUP"

echo "Vim-plug setup"
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Preparing Vim to use"
vim -c PlugInstall -c q -c q

echo "Creating links"
ln -sfnv $PWD/.vimrc $HOME/.vimrc
