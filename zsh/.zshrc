for file in $ZDOTDIR/assets/*.zsh
do
	. $file
done

# CUSTOM COMMANDS
[ -z "$TMUX" ] && { exec tmux "$@" || exec tmux attach; }

neofetch --ascii_colors $neofetch_ascii_colors --colors $neofetch_colors

. "$ASDF_DIR/asdf.sh"
