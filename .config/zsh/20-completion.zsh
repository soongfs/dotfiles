fpath=(
  /usr/share/zsh/site-functions
  /usr/share/zsh/functions/Completion
  $fpath
)

autoload -Uz compinit
compinit -d "$ZSH_CACHE_DIR/zcompdump"

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$ZSH_CACHE_DIR/zcompcache"
