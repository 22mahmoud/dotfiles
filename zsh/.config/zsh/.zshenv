export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"

export KEYTIMEOUT=1

# History
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE="$ZSH_CACHE_DIR/history"

# FZF config
source "$XDG_CONFIG_HOME/ricing/theme.zsh"
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --color=bg:-1"
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export FZF_CTRL_T_COMMAND="fd"
