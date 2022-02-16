#!/usr/bin/env bash

echo "#################"
echo "### GIT SETUP ###"
echo "#################"
echo ""

if [[ ! -f $HOME/.gitconfig && ! -f $HOME/.gitignore_global ]]
then
  ln -sfnv "$PWD"/.gitconfig "$HOME"/.gitconfig
  ln -sfnv "$PWD"/.gitignore_global "$HOME"/.gitignore_global
else
  echo "Nothing to do here!"
fi
