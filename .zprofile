export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"
export PATH="$PATH:$(du "$HOME/bin/" | cut -f2 | paste -sd ':')"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"


# Default programs:
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export BROWSER="brave-beta"
export READER="zathura"
export WM='bspwm'
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export MANPAGER="sh -c 'col -bx | bat --theme='Nord' -l man -p'"

export _JAVA_AWT_WM_NONREPARENTING=1

export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ssh-agent startx
