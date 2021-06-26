export JAVA_HOME=/usr/lib/jvm/java-14-j9
export DENO_INSTALL="/home/ashraf/.deno"
export ANDROID_HOME="$ANDROID_SDK_HOME/Sdk"
export LESS=-RS
export CC=clang
export VOLTA_HOME=$HOME/.volta
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgreprc"

typeset -U PATH path

path=(
  "$VOLTA_HOME/bin"
  "$VOLTA_HOME/tools/image/packages/vscode-langservers-extracted/bin"
  "$ANDROID_HOME/emulator"
  "$ANDROID_HOME/tools"
  "$ANDROID_HOME/tools/bin"
  "$ANDROID_HOME/platform-tools"
  "$CARGO_HOME/bin"
  "/usr/lib/elixir/bin"
  "$DENO_INSTALL/bin"
  "$HOME/go/bin"
  "$HOME/.config/composer/vendor/bin"
  "$HOME/.luarocks/rocks"
  "/usr/lib/bin/luarocks"
  "$path[@]"
)

export PATH
