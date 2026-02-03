#!/usr/bin/env bash
set -euo pipefail

APP_ID="neomutt-term"
WS_NAME="email"

niri msg action focus-workspace "${WS_NAME}" >/dev/null

WIN_ID="$(
  niri msg --json windows |
    jq -r --arg app "${APP_ID}" 'map(select(.app_id == $app)) | .[0].id // empty'
)"

if [[ -n "${WIN_ID}" ]]; then
  niri msg action focus-window --id "${WIN_ID}" >/dev/null
  exit 0
fi

# 3) Spawn neomutt in your terminal
"${TERMINAL}" --app-id="${APP_ID}" -e bicon eg neomutt &
