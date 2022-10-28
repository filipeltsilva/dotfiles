# My dotfiles

These are my dotfiles, optimized to run in a fresh Manjaro Linux installation.

## Installation

In your $HOME directory, clone this repository and access it.

```bash
git clone --recurse-submodules https://github.com/filipeltsilva/dotfiles .dotfiles

cd .dotfiles
```

Then, run the make command with the flag you want to run.

```bash
make the_flag_you_wanna_run
```

## Flags

- cedilla: Add cedilla support in US Alternative International keyboard layout
- install_softwares: Install software listed in $PACMAN_PACKAGES and $AUR_PACKAGES, respectivelly. Runs pacman_setup and pamac_setup before it
- nvidia_setup: search and install the best NVidia driver to your machine
- pacman_setup: Configure Pacman package manager
- pamac_setup: Configure Pamac utility
