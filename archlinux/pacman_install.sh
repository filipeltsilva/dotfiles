#!/usr/bin/env bash

packages=(
  conky
  dbeaver
  discord
  firefox-developer-edition
  gimp
  gimp-help-en
  git-lfs
  github-cli
  inkscape
  kde-applications
  krita
  meld
  neofetch
  p7zip
  steam
  telegram-desktop
  tmux
  torbrowser-launcher
  ttf-roboto
  unzip
  virtualbox
  virtualbox-host-modules-arch
  youtube-dl
  zip
  zsh
)

echo "Installing Pacman Packages"
sudo pacman -S ${packages[@]} --noconfirm
