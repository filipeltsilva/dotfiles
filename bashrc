#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Various aliases settings
alias ls='ls --color=auto'
alias ~='cd ~'
alias x='exit'
alias arch='screenfetch'

# Aliases for pacman
alias check='sudo pacman -Qs'
alias clean='sudo pacman -Scc'
alias install='sudo pacman -S'
alias search='sudo pacman -Ss'
alias sincro='sudo pacman -Syy'
alias update='sudo pacman -Syu'

# Aliases for packer
alias pkinstall='sudo packer -S'
alias pksearch='sudo packer -Ss'

PS1='[\u@\h \W]\$ '
