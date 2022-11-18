# My dotfiles

These are my dotfiles, optimized to run in a fresh Manjaro Linux installation.

## Setup Process

### Pre-installation

First of all, the `make` command is not supported in a fresh Manjaro linux installation. To resolve this issue, install the `base-devel` package with `pacman` with the command below:

```bash
sudo pacman -S base-devel --noconfirm
```

Then, in your `$HOME` directory, clone this repository and access it.

```bash
git clone https://github.com/filipeltsilva/dotfiles .dotfiles

cd .dotfiles
```

### Installation

After access the `.dottfiles/` folder in your `$HOME`, execute the `make` command with the flag you want to run.

```bash
make the_flag_you_wanna_run
```

At the end of installation process, you can reboot your machine if you want to run the post-installation process.

### Post-installation

After reboot your machine, access the `.dotfiles` folder again and run `make the_flag_you_wanna_run`.

## Flags

* `asdf_setup`: Install asdf-vm plugins and their related packages
* `cedilla`: Add cedilla support in US Alternative International keyboard layout
* `install`: Run the flags `cedilla`, `install_softwares`, `symlink_dotfiles` and `tmux_setup`
* `install_softwares`: Install software listed in `$PACMAN_PACKAGES` and `$AUR_PACKAGES`, respectivelly. This flag runs `pacman_setup` and `pamac_setup` first
* `nvidia_setup`: search and install the best NVidia driver to your machine
* `pacman_setup`: Configure Pacman package manager
* `pamac_setup`: Configure Pamac utility
* `post_install`: Run the flags `asdf_setup` and `updatedb`
* `tmux_setup`: Install Tmux Plugin Manager (TPM) to manage the Tmux plugins
* `updatedb`: Update the system files database to improve search speed

## Recommended workflow

* Install `base-devel` and clone this repository, like described in Pre-installation routine
* Run the `make install` flag
* Reboot the machine
* Access the `.dotfiles` folder again and run `make post_install` flag
