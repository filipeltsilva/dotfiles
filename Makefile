DOTFILES_PATH = $(PWD)/config

XDG_CACHE_HOME = $(HOME)/.cache
XDG_CONFIG_HOME = $(HOME)/.config
XDG_DATA_HOME = $(HOME)/.local/share

NODEJS_PACKAGES = npm yarn

all:

packer: ## Install Neovim's Packer package manager
	git clone --depth 1 https://github.com/wbthomason/packer.nvim $(XDG_DATA_HOME)/nvim/site/pack/packer/start/packer.nvim

pacman_setup: ## Pacman settings
	sudo sed -i 's/#Color/Color/' /etc/pacman.conf
	sudo sed -i 's/#ParallelDownloads = 5/ParallelDownloads = 10\nILoveCandy/' /etc/pacman.conf
	sudo pacman-key --init
	sudo pacman-key --populate archlinux manjaro
	sudo pacman-mirrors --geoip && sudo pacman -Syu

pamac_setup: ## Pamac settings
	sudo sed -i 's/#RemoveUnrequiredDeps/RemoveUnrequiredDeps/' /etc/pamac.conf
	sudo sed -i 's/RefreshPeriod = 6/RefreshPeriod = 24/' /etc/pamac.conf
	sudo sed -i 's/#NoUpdateHideIcon/NoUpdateHideIcon/' /etc/pamac.conf
	sudo sed -i 's/#EnableDowngrade/EnableDowngrade/' /etc/pamac.conf
	sudo sed -i 's/#EnableAUR/EnableAUR/' /etc/pamac.conf
	sudo sed -i 's/#CheckAURUpdates/CheckAURUpdates/' /etc/pamac.conf
	sudo sed -i 's/MaxParallelDownloads = 4/MaxParallelDownloads = 10\n\nEnableFlatpak\n\nCheckFlatpakUpdates/' /etc/pamac.conf

symlink_dotfiles: ## Create symbolic links
	ln -sfnv $(DOTFILES_PATH)/alacritty $(XDG_CONFIG_HOME)/alacritty
	ln -sfnv $(DOTFILES_PATH)/asdf $(XDG_CONFIG_HOME)/asdf
	ln -sfnv $(DOTFILES_PATH)/fish $(XDG_CONFIG_HOME)/fish
	ln -sfnv $(DOTFILES_PATH)/git $(XDG_CONFIG_HOME)/git
	ln -sfnv $(DOTFILES_PATH)/npm $(XDG_CONFIG_HOME)/npm
	ln -sfnv $(DOTFILES_PATH)/nvim $(XDG_CONFIG_HOME)/nvim
	ln -sfnv $(DOTFILES_PATH)/tmux $(XDG_CONFIG_HOME)/tmux

