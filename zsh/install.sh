#!/usr/bin/env bash

echo "#################"
echo "### ZSH SETUP ###"
echo "#################"
echo ""

if [[ ! -d $HOME/.oh-my-zsh ]]
then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

  sudo chsh -s "$(which zsh)" "$USER"
else
  echo "Nothing to do here!"
fi

ln -sfnv "$PWD"/.zshenv "$HOME"/.zshenv
ln -sfnv "$PWD"/.zshrc "$HOME"/.zshrc
