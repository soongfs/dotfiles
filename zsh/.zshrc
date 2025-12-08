if [ -d "$HOME/.zshrc.d" ]; then
  for rc in "$HOME"/.zshrc.d/*.zsh; do
    [ -r "$rc" ] && [ -f "$rc" ] && source "$rc"
  done
fi
