#!/usr/bin/env bash

packages=(
  insomnia-bin
  iridium-rpm
  librewolf-bin
  obsidian
  rar
  skypeforlinux-stable-bin
  spotify
  ttf-ms-fonts
  visual-studio-code-bin
  xp-pen-tablet
)

sudo pacman -Syy

echo "Installing AUR support by yay"
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
cd ..
rm -rf yay-git

echo "Installing AUR Packages"
yay -S "${packages[@]}"
