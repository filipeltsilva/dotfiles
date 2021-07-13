# export MANPATH="/usr/local/man:$MANPATH"

# ENVIRONMENT VARIABLES
if [[ `uname` == "Darwin" ]]; then
  export MANPATH="${MANPATH}:$(brew --prefix coreutils)/libexec/gnuman:$(brew --prefix findutils)/libexec/gnuman"
  export PATH="${PATH}:$(brew --prefix coreutils)/libexec/gnubin:$(brew --prefix findutils)/libexec/gnubin:/usr/local/sbin:${HOME}/.dotfiles/bin"
else
  export PATH="${PATH}:${HOME}/.dotfiles/bin"
fi

#export PATH="$(yarn global bin):$PATH"

