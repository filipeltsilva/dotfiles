#!/usr/bin/env bash

DOTFILES_PATH=~/.dotfiles/dotfiles

for file in $(ls ${DOTFILES_PATH}); do
  ln -sfnv ${DOTFILES_PATH}/${file} ~/.${file}
done

unset file
