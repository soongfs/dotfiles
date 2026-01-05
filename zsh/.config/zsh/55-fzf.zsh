# fzf key bindings + completion
if [[ -r /usr/share/fzf/key-bindings.zsh ]]; then
  source /usr/share/fzf/key-bindings.zsh
fi
if [[ -r /usr/share/fzf/completion.zsh ]]; then
  source /usr/share/fzf/completion.zsh
fi

# Use fd/rg if available (optional but recommended)
if command -v fd >/dev/null; then
  export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude .git'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
elif command -v rg >/dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!.git/*"'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND='rg --files --hidden --follow -g "!.git/*" | sed "s|/[^/]*$||" | sort -u'
fi

# Common options (keep conservative)
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
--color=fg:#c5cdd9,bg:#262729,hl:#6cb6eb 
--color=fg+:#c5cdd9,bg+:#262729,hl+:#5dbbc1 
--color=info:#88909f,prompt:#ec7279,pointer:#d38aea 
--color=marker:#a0c980,spinner:#ec7279,header:#5dbbc1'
