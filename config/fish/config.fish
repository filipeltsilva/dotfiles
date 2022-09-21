set -gx DOTFILES $HOME/.dotfiles

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state

set -gx ASDF_DATA_DIR $XDG_DATA_HOME/asdf
set -gx ASDF_CONFIG_FILE $XDG_CONFIG_HOME/asdf/asdfrc
set -gx ASDF_DEFAULT_TOOL_VERSIONS_FILENAME $XDG_CONFIG_HOME/asdf/.tool-versions
set -gx ASDF_GEM_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/asdf/.default-gems
set -gx ASDF_NPM_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/asdf/.default-npm-packages

set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc

set -gx EDITOR nvim

starship init fish | source
