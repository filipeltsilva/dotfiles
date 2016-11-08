#!/usr/bin/env bash

for file in $(ls ~/.dotfiles/dotfiles); do
  ln -s ${file} ~/.${file}
done

unset file
