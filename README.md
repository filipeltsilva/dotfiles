# My dotfiles

These are my dotfiles, optimized to run in a fresh Manjaro Linux installation.

## Installation

First of all, the make command is not supported in a fresh Manjaro linux installation. To resolve this issue, install the base-devel package with pacman or pamac.

Then, in your $HOME directory, clone this repository and access it.

```bash
git clone https://github.com/filipeltsilva/dotfiles .dotfiles

cd .dotfiles
```

Then, run the make command with the flag you want to run.

```bash
make the_flag_you_wanna_run
```

## Flags

- asdf_setup: Install asdf-vm plugins and their related packages
- cedilla: Add cedilla support in US Alternative International keyboard layout
- install_softwares: Install software listed in $PACMAN_PACKAGES and $AUR_PACKAGES, respectivelly. This flag runs pacman_setup and pamac_setup first
- nvidia_setup: search and install the best NVidia driver to your machine
- pacman_setup: Configure Pacman package manager
- pamac_setup: Configure Pamac utility
- tmux_setup: Install Tmux Plugin Manager (TPM) to manage the Tmux plugins
