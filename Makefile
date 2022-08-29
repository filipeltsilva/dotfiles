DOTFILES = $(PWD)/config

XDG_CACHE_HOME = $(HOME)/.cache
XDG_CONFIG_HOME = $(HOME)/.config
XDG_DATA_HOME = $(HOME)/.local/share

all:

batata:
	ls -a $(DOTFILES)/tmux

symlink_dotfiles:
	ln -sfnv $(DOTFILES)/alacritty $(XDG_CONFIG_HOME)/alacritty
	ln -sfnv $(DOTFILES)/asdf $(XDG_CONFIG_HOME)/asdf
	ln -sfnv $(DOTFILES)/fish $(XDG_CONFIG_HOME)/fish
	ln -sfnv $(DOTFILES)/git $(XDG_CONFIG_HOME)/git
	ln -sfnv $(DOTFILES)/npm $(XDG_CONFIG_HOME)/npm
	ln -sfnv $(DOTFILES)/nvim $(XDG_CONFIG_HOME)/nvim
	ln -sfnv $(DOTFILES)/tmux $(XDG_CONFIG_HOME)/tmux

