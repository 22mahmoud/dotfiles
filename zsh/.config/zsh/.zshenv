export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"

export LS_COLORS=${LS_COLORS:-'di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'}

export KEYTIMEOUT=1

# History
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE="$ZSH_CACHE_DIR/history"

# nnn config
export GUI=1
export NNN_OPENER="$XDG_CONFIG_HOME/nnn/plugins/nuke"	
export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG="z:autojump;p:preview-tui;u:imgur;d:dragdrop"
export NNN_TRASH=1

# fzf config
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# pfetch
export PF_INFO="ascii os wm host pkgs shell editor"

# git contrib
export PATH="$PATH:$(du "$HOME/.local/src/git/contrib" | cut -f2 | paste -sd ':')"

# path
typeset -U PATH path

path=(
  "$VOLTA_HOME/bin"
  "$CARGO_HOME/bin"
  "$DENO_INSTALL/bin"
  "$GO_PATH/bin"
  "$GEM_HOME/bin"
  "$ANDROID_HOME/emulator"
  "$ANDROID_HOME/tools"
  "$ANDROID_HOME/tools/bin"
  "$ANDROID_HOME/platform-tools"
  "$path[@]"
)

export PATH

