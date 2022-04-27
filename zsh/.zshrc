for file in $ZDOTDIR/assets/*.zsh
do
	. $file
done

# CUSTOM COMMANDS
[ -z "$TMUX" ] && { exec tmux "$@" || exec tmux attach; }

neofetch

. /opt/asdf-vm/asdf.sh
