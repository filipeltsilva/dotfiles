DOTFILES_PATH = $(PWD)/config

XDG_CACHE_HOME = $(HOME)/.cache
XDG_CONFIG_HOME = $(HOME)/.config
XDG_DATA_HOME = $(HOME)/.local/share

ASDF_PACKAGES = nodejs starship

AUR_PACKAGES = adobe-icc asdf-vm eci-icc ttf-ms-fonts xp-pen-tablet

PACMAN_PACKAGES = alacritty chromium conky discord fish gimp gimp-help-en inkscape krita meld tree
PACMAN_PACKAGES += neofetch neovim python-pip shellcheck telegram-desktop tmux torbrowser-launcher ttf-fira-code youtube-dl

NODEJS_PACKAGES = npm yarn

all:

cedilla:
	echo "GTK_IM_MODULE=cedilla" | sudo tee -a /etc/environment
	echo "QT_IM_MODULE=cedilla" | sudo tee -a /etc/environment

nvidia_setup: ## Detect and install NVidia Graphics driver
	sudo mhwd -a pci nonfree 0300

pacman_setup: ## Pacman settings
	sudo sed -i 's/#Color/Color/' /etc/pacman.conf
	sudo sed -i 's/#ParallelDownloads = 5/ParallelDownloads = 20\nILoveCandy/' /etc/pacman.conf
	sudo pacman-key --init
	sudo pacman-key --populate archlinux manjaro
	sudo pacman-mirrors --geoip && sudo pacman -Syyu --noconfirm
	sudo pamac install $(PACMAN_PACKAGES)

pamac_setup: ## Pamac settings
	sudo sed -i 's/#RemoveUnrequiredDeps/RemoveUnrequiredDeps/' /etc/pamac.conf
	sudo sed -i 's/RefreshPeriod = 6/RefreshPeriod = 24/' /etc/pamac.conf
	sudo sed -i 's/#NoUpdateHideIcon/NoUpdateHideIcon/' /etc/pamac.conf
	sudo sed -i 's/#EnableDowngrade/EnableDowngrade/' /etc/pamac.conf
	sudo sed -i 's/#EnableAUR/EnableAUR/' /etc/pamac.conf
	sudo sed -i 's/#CheckAURUpdates/CheckAURUpdates/' /etc/pamac.conf
	sudo sed -i 's/MaxParallelDownloads = 4/MaxParallelDownloads = 10\n\nEnableFlatpak\n\nCheckFlatpakUpdates/' /etc/pamac.conf
	sudo pamac build $(AUR_PACKAGES)

symlink_dotfiles: ## Create symbolic links
	ln -sfnv $(DOTFILES_PATH)/alacritty $(XDG_CONFIG_HOME)/alacritty
	ln -sfnv $(DOTFILES_PATH)/asdf $(XDG_CONFIG_HOME)/asdf
	ln -sfnv $(DOTFILES_PATH)/fish $(XDG_CONFIG_HOME)/fish
	ln -sfnv $(DOTFILES_PATH)/git $(XDG_CONFIG_HOME)/git
	ln -sfnv $(DOTFILES_PATH)/npm $(XDG_CONFIG_HOME)/npm
	ln -sfnv $(DOTFILES_PATH)/nvim $(XDG_CONFIG_HOME)/nvim
	ln -sfnv $(DOTFILES_PATH)/tmux $(XDG_CONFIG_HOME)/tmux
