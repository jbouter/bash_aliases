#!/usr/bin/env bash

# Commonly used aliases
alias ls='ls -F --color=auto'
alias l='ls -F'
alias ll='ls -l'
alias la='ls -las'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias duh='du -hsx * 2>/dev/null | sort -hr | head -n 6'
alias ip='ip -c'

# Remove squashfs (snaps) from df
alias df='df -x"squashfs"'
