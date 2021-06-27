typeset -U PATH path

path=(
  "$VOLTA_HOME/bin"
  "$VOLTA_HOME/tools/image/packages/vscode-langservers-extracted/bin"
  "$CARGO_HOME/bin"
  "$DENO_INSTALL/bin"
  "$GO_PATH/bin"
  "$GEM_HOME/bin"
  "$path[@]"
)

export PATH
