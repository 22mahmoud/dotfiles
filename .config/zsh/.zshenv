export JAVA_HOME=/usr/lib/jvm/default
export DENO_INSTALL="/home/ashraf/.deno"
export ANDROID_HOME=$HOME/Android/Sdk
export LESS=-RS
export GOPATH=$(go env GOPATH)
export GOROOT=$(go env GOROOT)


typeset -U PATH path

path=(
  "$ANDROID_HOME/emulator"
	"$HOME/.gem/ruby/2.7.0/bin"
  "$ANDROID_HOME/tools"
  "$ANDROID_HOME/tools/bin"
  "$ANDROID_HOME/platform-tools"
  "$HOME/.cargo/bin"
  "/usr/lib/elixir/bin"
  "$DENO_INSTALL/bin"
  "$HOME/go/bin"
  "$HOME/.config/composer/vendor/bin"
  "$HOME/.luarocks/rocks"
  "/usr/lib/bin/luarocks"
  "$path[@]"
)
export PATH

export NNN_FIFO=/tmp/nnn.fifo
