# source plugins
fpath=($ZDOTDIR/plugins $fpath)
fpath=("$ZDOTDIR/plugins/zsh-completions/src" $fpath)
source "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZDOTDIR/plugins/zsh-you-should-use/you-should-use.plugin.zsh"
source "$ZDOTDIR/plugins/gitstatus/gitstatus.plugin.zsh"
source "$ZDOTDIR/plugins/cursor_mode"

trap "source $ZDOTDIR/.zshrc && rehash" USR1

# navigation
setopt AUTO_CD           # Go to folder path without using cd.
setopt AUTO_PUSHD        # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS # Do not store duplicates in the stack.
setopt PUSHD_SILENT      # Do not print the directory stack after pushd or popd.
setopt CORRECT           # Spelling correction
setopt CDABLE_VARS       # Change directory to a path stored in a variable.
setopt EXTENDED_GLOB     # Use extended globbing syntax.

# history
setopt EXTENDED_HISTORY       # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY          # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS       # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS      # Do not display a previously found event.
setopt HIST_IGNORE_SPACE      # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS      # Do not write a duplicate event to the history file.
setopt HIST_VERIFY            # Do not execute immediately upon history expansion.

# completion
source "$ZDOTDIR/completion.zsh"

# Override colors
eval "$(dircolors -b $XDG_CONFIG_HOME/shell/dircolors)"

# aliases
source "$XDG_CONFIG_HOME/shell/aliasrc"
source "$XDG_CONFIG_HOME/shell/functions"

# Editor mode (keystroke: '^e' in normal mode)
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd "^e" edit-command-line

# FZF config
source "$XDG_CONFIG_HOME/ricing/theme.zsh"
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --color=bg:-1"
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export FZF_CTRL_T_COMMAND="fd"
export FZF_COMPLETION_TRIGGER='~~'

# fzf support
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

# prompt
autoload -Uz prompt_setup
prompt_setup

# zoxide - fast navigation
eval "$(zoxide init zsh)"
