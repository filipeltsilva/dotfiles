#!/usr/bin/env bash

echo "##################"
echo "### NANO SETUP ###"
echo "##################"
echo ""

if [[ ! -f $HOME/.nanorc ]]
then
  ln -sfnv "$PWD"/.nanorc "$HOME"/.nanorc
else
  echo "Nothing to do here!"
fi
