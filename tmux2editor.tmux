#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
output=$(tmux show -gqv '@send_to_editor')

if [ -n "$output" ]; then
  tmux bind-key "$(tmux show -gqv '@send_to_editor')" run-shell "$CURRENT_DIR/scripts/toeditor.sh"
fi

