set -gx DOTFILES $HOME/.dotfiles

set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state

set -gx EDITOR nvim
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc

set -gx MISE_GO_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/mise/.default-go-packages
set -gx MISE_NODE_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/mise/.default-npm-packages
set -gx MISE_RUBY_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/mise/.default-gems

$HOME/.local/bin/mise activate fish | source

starship init fish | source
