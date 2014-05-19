#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Various aliases settings
alias ls='ls --color=auto'
alias ~='cd ~'
alias x='exit'
alias cl='clear'

PS1='[\u@\h \W]\$ '
