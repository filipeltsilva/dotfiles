DOTFILES_PATH = $(PWD)/config

XDG_CACHE_HOME = $(HOME)/.cache
XDG_CONFIG_HOME = $(HOME)/.config
XDG_DATA_HOME = $(HOME)/.local/share

NODEJS_PACKAGES = npm yarn

all:

packer:
	git clone --depth 1 https://github.com/wbthomason/packer.nvim $(XDG_DATA_HOME)/nvim/site/pack/packer/start/packer.nvim

symlink_dotfiles:
	ln -sfnv $(DOTFILES_PATH)/alacritty $(XDG_CONFIG_HOME)/alacritty
	ln -sfnv $(DOTFILES_PATH)/asdf $(XDG_CONFIG_HOME)/asdf
	ln -sfnv $(DOTFILES_PATH)/fish $(XDG_CONFIG_HOME)/fish
	ln -sfnv $(DOTFILES_PATH)/git $(XDG_CONFIG_HOME)/git
	ln -sfnv $(DOTFILES_PATH)/npm $(XDG_CONFIG_HOME)/npm
	ln -sfnv $(DOTFILES_PATH)/nvim $(XDG_CONFIG_HOME)/nvim
	ln -sfnv $(DOTFILES_PATH)/tmux $(XDG_CONFIG_HOME)/tmux

