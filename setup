#!/bin/bash

echo
echo 'Instalando o e ativando o oh-my-zsh'
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
echo
sleep 3

echo 'Configurando o zsh'
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/zshrc $HOME/.zshrc

# rm $HOME/.bashrc
# ln -s $HOME/.dotfiles/bashrc $HOME/.bashrc
