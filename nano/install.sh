#!/usr/bin/env bash

echo "##################"
echo "### NANO SETUP ###"
echo "##################"
echo ""

if [[ ! -f $HOME/.nanorc && ! -f $HOME/.gitignore_global ]]
then
  ln -sfnv $PWD/.nanorc $HOME/.nanorc
else
  echo "Nothing to do here!"
fi
