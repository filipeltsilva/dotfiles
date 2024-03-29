set -gx DOTFILES $HOME/.dotfiles

set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state

set -gx EDITOR nvim
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc

set -gx RTX_GO_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/rtx/.default-go-packages
set -gx RTX_NODE_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/rtx/.default-npm-packages
set -gx RTX_RUBY_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/rtx/.default-gems

$XDG_DATA_HOME/rtx/bin/rtx activate fish | source

starship init fish | source
