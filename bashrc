#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Definições de alias para comandos no terminal
alias ls='ls --color=auto'
alias ~='cd ~'
alias x='exit'
alias arch='screenfetch'
alias check='sudo pacman -Qs'
alias clean='sudo pacman -Scc'
alias install='sudo pacman -S'
alias search='sudo pacman -Ss'
alias sincro='sudo pacman -Syy'
alias update='sudo pacman -Syu'

PS1='[\u@\h \W]\$ '
