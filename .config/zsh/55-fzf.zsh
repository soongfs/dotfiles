if [[ -r /usr/share/fzf/key-bindings.zsh ]]; then
  source /usr/share/fzf/key-bindings.zsh
fi
if [[ -r /usr/share/fzf/completion.zsh ]]; then
  source /usr/share/fzf/completion.zsh
fi

if command -v fd >/dev/null; then
  export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude .git'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
elif command -v rg >/dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!.git/*"'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND='rg --files --hidden --follow -g "!.git/*" | sed "s|/[^/]*$||" | sort -u'
fi
