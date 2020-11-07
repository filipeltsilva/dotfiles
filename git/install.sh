#!/usr/bin/env bash

echo "GIT SETUP"

echo "Creating links"
ln -sfnv $PWD/.gitconfig $HOME/.gitconfig
ln -sfnv $PWD/.gitignore_global $HOME/.gitignore_global
