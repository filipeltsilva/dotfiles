#!/usr/bin/env bash

DOTFILES=$(find -f ~/.dotfiles/dotfiles)

for file in $DOTFILES; do
  echo $file
done

unset file
