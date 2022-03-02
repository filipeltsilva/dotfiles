export ZSH="$HOME/.oh-my-zsh"

for file in $(ls $DOTFILES_PATH/zsh/*.zsh); do
  source $file
done

. $ZSH/oh-my-zsh.sh

neofetch
