setopt ALWAYS_TO_END
setopt AUTO_LIST
setopt AUTO_PARAM_SLASH
setopt COMPLETE_ALIASES
setopt MENU_COMPLETE

autoload -Uz compinit; compinit
zstyle ':completion:*' menu select
