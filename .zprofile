export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"
export PATH="$PATH:$(du "$HOME/.local/share/go/bin" | cut -f2 | paste -sd ':')"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export DENO_INSTALL="${XDG_DATA_HOME:-$HOME/.local/share}/deno"
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"
export MOZ_LOG="${XDG_DATA_HOME:-$HOME/.local/share}/mozilla"

# Default programs:
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"
export BROWSER="qutebrowser"
export READER="zathura"
export WM='dwm'
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export MANPAGER="sh -c 'col -bx | bat --theme='Nord' -l man -p'"

# Fix for Java apps
export _JAVA_AWT_WM_NONREPARENTING=1

# nnn config
export GUI=1
export NNN_OPENER="$XDG_CONFIG_HOME/nnn/plugins/nuke"	
export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG="z:autojump;p:preview-tabbed;u:imgur"
export NNN_TRASH=1

# mailcap
export MAILCAPS="${XDG_CONFIG_HOME:-$HOME/.config}/mailcap"

# startx when logged in
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec ssh-agent startx
fi
