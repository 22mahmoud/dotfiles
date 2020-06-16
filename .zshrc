source ~/zshtheme
export JAVA_HOME=/usr/lib/jvm/default
export PATH="$PATH:/home/ashraf/.gem/ruby/2.7.0/bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.local/bin"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.cargo/bin

export ZSH="/home/ashraf/.oh-my-zsh"
export DENO_INSTALL="/home/ashraf/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export TERM="xterm-256color"

# Show OS info when opening a new terminal
# neofetch

plugins=(
  tmux
  ssh-agent
  zsh-autosuggestions
  zsh-syntax-highlighting
  safe-paste
  extract
  command-not-found
  fzf
)

source $ZSH/oh-my-zsh.sh
source $(dirname $(gem which colorls))/tab_complete.sh

# Aliases.
source ~/.aliases

# ssh-agent
zstyle :omz:plugins:ssh-agent identities personal-github

# enable vim mode
bindkey -v

export VOLTA_HOME="/home/ashraf/.volta"
grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# bind clear
bindkey '^e' clear-screen
bindkey -r '^l'
