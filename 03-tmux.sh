#!/usr/bin/env bash

# custom function to start a new SSH session in a new tmux window
function t () {
  if [ "$(tmux list-windows | grep -c "$1")" -gt 0 ]; then
    windownumber=$(tmux list-windows | grep "$1" | cut -d ':' -f1)
    tmux select-window -t "$windownumber"
  else
    tmux new-window -n "$1" "ssh $1"
  fi
}
