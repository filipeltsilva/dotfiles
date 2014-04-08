#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Various aliases settings
alias ls='ls --color=auto'
alias ~='cd ~'
alias x='exit'

PS1='[\u@\h \W]\$ '
