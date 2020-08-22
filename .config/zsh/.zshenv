export JAVA_HOME=/usr/lib/jvm/default
export DENO_INSTALL="/home/ashraf/.deno"
export ANDROID_HOME=$HOME/Android/Sdk
export VOLTA_HOME="/home/ashraf/.volta"
export LESS=-RS

typeset -U PATH path

path=(
  "$ANDROID_HOME/emulator" 
  "$ANDROID_HOME/tools" 
  "$ANDROID_HOME/tools/bin" 
  "$ANDROID_HOME/platform-tools"
  "$HOME/.cargo/bin" 
  "$DENO_INSTALL/bin" 
  "$VOLTA_HOME/bin"
  "$HOME/go/bin"
  "$path[@]" 
)
export PATH
