# FRONT-END ALIASES
alias bower="noglob bower"

# MY TERMINAL ALIASES
alias cl="clear"
alias ping="ping -c 5"
alias q="exit"
alias svim="sudo vim"
alias upzsh="source ~/.zshrc"
# DEFAULT TEXT EDITOR
export EDITOR='vim'

# DEFAULT LANGUAGE
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# ENVIRONMENT VARIABLES
if [[ `uname` == "Darwin" ]]; then
  export MANPATH="${MANPATH}:$(brew --prefix coreutils)/libexec/gnuman:$(brew --prefix findutils)/libexec/gnuman"
  export PATH="${PATH}:$(brew --prefix coreutils)/libexec/gnubin:$(brew --prefix findutils)/libexec/gnubin:/usr/local/sbin:${HOME}/.dotfiles/bin"
else
  export PATH="${PATH}:${HOME}/.dotfiles/bin"
fi
function brewup() {
  echo "Updating Brew and Brew Packages"
  brew update
  brew upgrade --cleanup `brew outdated`

  rm -rf $(brew --cache)
  brew cask update
  brew cask reinstall $(brew cask outdated)

  echo "Deleting unecessary files"
  brew cleanup -n
  brew cask cleanup -n
}

function yt() {
  if [[ `echo $1 | grep playlist` ]]; then
    youtube-dl $1 -f $2 -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --youtube-skip-dash-manifest
  else
    youtube-dl $1 -f $2 -o '%(title)s.%(ext)s' --youtube-skip-dash-manifest
  fi
}

function ytinfo() {
  youtube-dl -F $1
}
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DEFAULT_USER="$USER"
ENABLE_CORRECTION="true"
ZSH_THEME="robbyrussell"

plugins=(
  git
)
