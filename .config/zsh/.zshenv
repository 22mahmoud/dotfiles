typeset -U PATH path

path=(
  "$VOLTA_HOME/bin"
  "$VOLTA_HOME/tools/image/packages/vscode-langservers-extracted/bin"
  "$CARGO_HOME/in"
  "$DENO_INSTALL/bin"
  "$GO_PATH/bin"
  "$path[@]"
)

export PATH
