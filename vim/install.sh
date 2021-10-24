#!/usr/bin/env bash

echo "#################"
echo "### VIM SETUP ###"
echo "#################"
echo ""

if [[ ! -d $HOME/.vim ]]
then
  curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  ln -sfnv $PWD/.vimrc $HOME/.vimrc
else
  echo "Nothing to do here!"
fi
