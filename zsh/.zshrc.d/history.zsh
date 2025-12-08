HISTSIZE=50000
SAVEHIST=50000
HISTFILE=$HOME/.zsh_history

# 同步多个终端的历史
setopt share_history
setopt inc_append_history

# 去重、清理
setopt hist_ignore_all_dups      # 不保存重复命令
setopt hist_reduce_blanks        # 去掉多余空格
setopt hist_verify               # 从历史取出命令时先显示再执行
setopt hist_ignore_space         # 以空格开头的命令不记录（临时命令）
