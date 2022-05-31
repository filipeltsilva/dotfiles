alias gco='git checkout'

alias gdif='git diff'

alias gcam='git add -A; git commit -m'

alias gst='git status'

alias glo='git log'

alias ggl='git pull origin $(git branch --show-current)'
alias ggp='git push origin $(git branch --show-current)'

gclone() {
  git clone https://github.com/"$1" "$2"
}

ggpnp() {
	ggl && ggp
}
