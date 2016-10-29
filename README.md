# My dotfiles

This is my dotfiles repository, that includes my configuration files and the necessary scripts to install and setup them. For now it was run and tested only in a macOS systems, but in the future I pretend to port it to work in Linux systems too.

## How to setup

To install my dotfiles you should run the command below that will download and run a pre-installation script, who will download a .zip file that contains the files stored in the _master_ branch, unzip it and rename the unzipped folder to _$HOME/.dotfiles_ hidden folder in your home directory, access it and run the install script.

```shell
sh -c "`curl -fsSL https://raw.github.com/filipeltsilva/dotfiles/master/pre_install.sh`"
