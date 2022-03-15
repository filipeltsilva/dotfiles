### GENERAL SETTINGS ###
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export editor="vim"

DEFAULT_USER="$USER"

CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ENABLE_CORRECTION="true"

DISABLE_AUTO_UPDATE="false"
DISABLE_UPDATE_PROMPT="true"
UPDATE_ZSH_DAYS=3

ZSH_TMUX_AUTOSTART="true"

### MY ALIASES ###
# To see the list of all aliases enabled, run the 'alias' command
alias home="cd ~"
alias mkd="mkdir $1"
alias omzr="omz reload"
alias omzup="omz update"
alias ping="ping -c 5"
alias q="exit"
alias v="vim"

### PLUGIN SETTINGS ###
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	asdf
	colored-man-pages
	git
	npm
	tmux
	web-search
	zsh-autosuggestions
)

### THEME SETTINGS ###
export TERM="xterm-256color"

ZSH_THEME="powerlevel10k/powerlevel10k"

### POWERLEVEL10K SETTINGS ###
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

### CUSTOM SETTINGS ###
. "$ZSH/oh-my-zsh.sh"

neofetch
