DOTFILES_PATH = $(PWD)/.config

XDG_CACHE_HOME = $(HOME)/.cache
XDG_CONFIG_HOME = $(HOME)/.config
XDG_DATA_HOME = $(HOME)/.local/share

AUR_PACKAGES = adobe-icc eci-icc ttf-ms-fonts xp-pen-tablet

PACMAN_PACKAGES = alacritty cmake chromium conky dbeaver discord fish gimp gimp-help-en git-lfs inkscape jdk17-openjdk krita meld
PACMAN_PACKAGES += neofetch neovim podman python-pip scribus shellcheck starship steam telegram-desktop tmux torbrowser-launcher trash tree ttf-fira-code

all:

cedilla: ## Enable cedilla in US Alternative International keyboard layout
	echo "GTK_IM_MODULE=cedilla" | sudo tee -a /etc/environment
	echo "QT_IM_MODULE=cedilla" | sudo tee -a /etc/environment

install: cedilla install_softwares rtx_install symlink_dotfiles tmux_setup ## Recommended flag to make the heavy service

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

post_install: rtx_setup updatedb ## Flag to run another flags after machine reboot

rtx_install: ## Install rtx programming languages manager
	curl https://rtx.pub/install.sh | sh

rtx_setup: ## Install rtx plugins
	rtx install

symlink_dotfiles: ## Create symbolic links
	ln -sfnv $(DOTFILES_PATH)/alacritty $(XDG_CONFIG_HOME)/alacritty
	ln -sfnv $(DOTFILES_PATH)/fish $(XDG_CONFIG_HOME)/fish
	ln -sfnv $(DOTFILES_PATH)/git $(XDG_CONFIG_HOME)/git
	ln -sfnv $(DOTFILES_PATH)/inkscape $(XDG_CONFIG_HOME)/inkscape
	ln -sfnv $(DOTFILES_PATH)/npm $(XDG_CONFIG_HOME)/npm
	ln -sfnv $(DOTFILES_PATH)/nvim $(XDG_CONFIG_HOME)/nvim
	ln -sfnv $(DOTFILES_PATH)/rtx $(XDG_CONFIG_HOME)/rtx
	ln -sfnv $(DOTFILES_PATH)/starship/starship.toml $(XDG_CONFIG_HOME)/starship.toml
	ln -sfnv $(DOTFILES_PATH)/tmux $(XDG_CONFIG_HOME)/tmux

tmux_setup: ## Install Tmux Plugin Manager (TPM)
	git clone https://github.com/tmux-plugins/tpm $(DOTFILES_PATH)/tmux/plugins/tpm

updatedb: ## Update the system files database to improve search speed
	sudo updatedb
