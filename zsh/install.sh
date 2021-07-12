#!/usr/bin/env bash

echo "ZSH SETUP"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo "Creating links"
ln -sfnv $PWD/.zshrc $HOME/.zshrc
ln -sfnv $PWD/.zprofile $HOME/.zprofile

echo "Setting ZSH as default shell"
chsh -s $(which zsh) $USER
