export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
ZSH_CONFIG_DIR="$XDG_CONFIG_HOME/zsh"
ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
mkdir -p "$ZSH_CONFIG_DIR" "$ZSH_CACHE_DIR"

for f in "$ZSH_CONFIG_DIR"/*.zsh(N); do
  source "$f"
done

