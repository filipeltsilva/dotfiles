# My dotfiles

This is my dotfiles repository, that includes my configuration files and the necessary scripts to install and setup them. For now it was run and tested only in a macOS systems, but in the future I pretend to port it to work in Linux systems too.

## How to setup

To install my dotfiles you should run the command below that will download and run a pre-install script, who will create the _$HOME/.dotfiles_ hidden folder in your home directory, download and extract the files inside this directory and execute the install script.

```shell
sh -c "`curl -fsSL https://raw.github.com/filipeltsilva/dotfiles/master/pre_install.sh`"
