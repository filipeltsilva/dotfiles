DOTFILES="$HOME/.dotfiles"

for file in $(ls $DOTFILES/zsh/*.zsh); do
  source $file
done
