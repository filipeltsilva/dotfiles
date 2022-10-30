DOTFILES_PATH = $(PWD)/config

XDG_CACHE_HOME = $(HOME)/.cache
XDG_CONFIG_HOME = $(HOME)/.config
XDG_DATA_HOME = $(HOME)/.local/share

ASDF_PLUGINS = nodejs ruby

AUR_PACKAGES = adobe-icc asdf-vm eci-icc ttf-ms-fonts xp-pen-tablet

PACMAN_PACKAGES = alacritty chromium conky dbeaver discord fish gimp gimp-help-en git-lfs inkscape krita meld neofetch neovim python-pip
PACMAN_PACKAGES += shellcheck starship steam telegram-desktop tmux torbrowser-launcher tree ttf-fira-code youtube-dl

all:

asdf_setup: ## Install asdf-vm plugins
	(cd $(DOTFILES_PATH)/asdf && asdf install)

cedilla: ## Enable cedilla in US Alternative International keyboard layout
	echo "GTK_IM_MODULE=cedilla" | sudo tee -a /etc/environment
	echo "QT_IM_MODULE=cedilla" | sudo tee -a /etc/environment

install: cedilla install_softwares symlink_dotfiles tmux_setup ## Recommended flag to make the heavy service

install_softwares: pacman_setup pamac_setup ## Install softwares after running Pacman and Pamac setups
	sudo pamac upgrade -a
	sudo pamac install $(PACMAN_PACKAGES)
	sudo pamac build $(AUR_PACKAGES)

nvidia_setup: ## Detect and install NVidia Graphics driver
	sudo mhwd -a pci nonfree 0300

pacman_setup: ## Pacman settings
	sudo sed -i 's/#Color/Color/' /etc/pacman.conf
	sudo sed -i 's/#ParallelDownloads = 5/ParallelDownloads = 20\nILoveCandy/' /etc/pacman.conf
	sudo pacman-key --init
	sudo pacman-key --populate archlinux manjaro
	sudo pacman-mirrors --geoip && sudo pacman -Syy --noconfirm

pamac_setup: ## Pamac settings
	sudo sed -i 's/#RemoveUnrequiredDeps/RemoveUnrequiredDeps/' /etc/pamac.conf
	sudo sed -i 's/RefreshPeriod = 6/RefreshPeriod = 24/' /etc/pamac.conf
	sudo sed -i 's/#NoUpdateHideIcon/NoUpdateHideIcon/' /etc/pamac.conf
	sudo sed -i 's/#EnableDowngrade/EnableDowngrade/' /etc/pamac.conf
	sudo sed -i 's/#EnableAUR/EnableAUR/' /etc/pamac.conf
	sudo sed -i 's/#CheckAURUpdates/CheckAURUpdates/' /etc/pamac.conf
	sudo sed -i 's/MaxParallelDownloads = 4/MaxParallelDownloads = 10\n\nEnableFlatpak\n\nCheckFlatpakUpdates/' /etc/pamac.conf

post_install: ## Flag to run another flags after machine reboot

symlink_dotfiles: ## Create symbolic links
	ln -sfnv $(DOTFILES_PATH)/alacritty $(XDG_CONFIG_HOME)/alacritty
	ln -sfnv $(DOTFILES_PATH)/asdf $(XDG_CONFIG_HOME)/asdf
	ln -sfnv $(DOTFILES_PATH)/fish $(XDG_CONFIG_HOME)/fish
	ln -sfnv $(DOTFILES_PATH)/git $(XDG_CONFIG_HOME)/git
	ln -sfnv $(DOTFILES_PATH)/npm $(XDG_CONFIG_HOME)/npm
	ln -sfnv $(DOTFILES_PATH)/nvim $(XDG_CONFIG_HOME)/nvim
	ln -sfnv $(DOTFILES_PATH)/tmux $(XDG_CONFIG_HOME)/tmux

tmux_setup: ## Install Tmux Plugin Manager (TPM)
	git clone https://github.com/tmux-plugins/tpm $(DOTFILES_PATH)/tmux/plugins/tpm
