export JAVA_HOME=/usr/lib/jvm/java-14-j9
export DENO_INSTALL="/home/ashraf/.deno"
export ANDROID_HOME="$ANDROID_SDK_HOME/Sdk"
export LESS=-RS
export CC=clang
export VOLTA_HOME=$HOME/.volta

typeset -U PATH path

path=(
  "$VOLTA_HOME/bin"
	"$HOME/.gem/ruby/2.7.0/bin"
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
