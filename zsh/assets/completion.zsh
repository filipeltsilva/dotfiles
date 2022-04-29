setopt ALWAYS_TO_END
setopt AUTO_LIST
setopt AUTO_PARAM_SLASH
setopt COMPLETE_ALIASES
setopt MENU_COMPLETE

autoload -Uz compinit; compinit -d "$XDG_CACHE_HOME/zsh/zcompdump_$ZSH_VERSION"
zstyle ':completion:*' menu select

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/zcompcache"
