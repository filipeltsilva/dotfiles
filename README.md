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

- cedilla: prepare your environment to support cedilla in US Alternative International keybord layout
- nvidia_setup: search and install the best NVidia driver to your machine
- pacman_setup: Configure Pacman package manager and install the packages saved in $PACMAN_PACKAGES variable
- pamac_setup: Configure Pamac utility and install the packages saved in $AUR_PACKAGES variable
