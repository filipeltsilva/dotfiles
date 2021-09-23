#!/usr/bin/env bash

#######################
### OH MY ZSH SETUP ###
#######################
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

##################
### TMUX SETUP ###
##################
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

#################
### VIM SETUP ###
#################
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

############################
### ZSH AS DEFAULT SHELL ###
############################
sudo chsh -s $(which zsh) $USER

######################
### CREATING LINKS ###
######################
ln -sfnv $PWD/.gitconfig $HOME/.gitconfig
ln -sfnv $PWD/.gitignore_global $HOME/.gitignore_global
ln -sfnv $PWD/.tmux.conf $HOME/.tmux.conf
ln -sfnv $PWD/.vimrc $HOME/.vimrc
ln -sfnv $PWD/.zshenv $HOME/.zshenv
ln -sfnv $PWD/.zshrc $HOME/.zshrc

echo "Done!"
