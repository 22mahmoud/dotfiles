export JAVA_HOME=/usr/lib/jvm/default
export DENO_INSTALL="/home/ashraf/.deno"
export ANDROID_HOME="$ANDROID_SDK_HOME/Sdk"
export LESS=-RS
export CC=clang

typeset -U PATH path

path=(
  "$ANDROID_HOME/emulator"
	"$HOME/.gem/ruby/2.7.0/bin"
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
