#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ALIASES FOR COMMANDS #
alias cl="clear"
alias q="exit"

# ALIASES FOR DIRECTORIES #
alias ~="cd ~"
alias ls="ls --color=auto"

# ALIASES FOR GIT #
alias gadd="git add"
alias gbranch="git branch"
alias gcheckout="git checkout"
alias gclone="git clone"
alias gcommit="git commit"
alias gconfig="git config"
alias gfetch="git fetch"
alias ginit="git init"
alias glog="git log"
alias gpull="git pull"
alias gpush="git push"
alias gremadd="git remote add"
alias greset="git reset"
alias gremote="git remote"
alias grm="git rm"
alias gstash="git stash"
alias gstatus="git status"

PS1='[\u@\h \W]\$ '

# DEFAULT EDITOR SETTINGS
export EDITOR=/usr/bin/nano

export PATH=$PATH:~/Scripts
export PATH=$PATH:/usr/bin/node
