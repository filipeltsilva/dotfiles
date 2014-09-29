#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ALIAS FOR COMMANDS #
alias cl="clear"
alias q="exit"

# ALIAS FOR DIRECTORIES #
alias ~="cd ~"
alias ls="ls --color=auto"

PS1='[\u@\h \W]\$ '

# DEFAULT EDITOR SETTINGS
export EDITOR=/usr/bin/nano

export PATH=$PATH:~/Scripts
