export ZSH="$HOME/.oh-my-zsh"

DOTFILES="$HOME/.dotfiles"

for file in $(ls $DOTFILES/zsh/*.zsh); do
  source $file
done

source $ZSH/oh-my-zsh.sh
