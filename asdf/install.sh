#!/usr/bin/env bash

echo "##################"
echo "### ASDF SETUP ###"
echo "##################"
echo ""

if [[ ! -d $HOME/.asdf ]]
then
  git clone https://github.com/asdf-vm/asdf.git "$HOME"/.asdf

  ln -sfnv "$PWD"/.asdfrc "$HOME"/.asdfrc
  ln -sfnv "$PWD"/.default-gems "$HOME"/.default-gems
  ln -sfnv "$PWD"/.default-npm-packages "$HOME"/.default-npm-packages
  ln -sfnv "$PWD"/.tool-versions "$HOME"/.tool-versions
else
  echo "Nothing to do here!"
fi
