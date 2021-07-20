#!/usr/bin/env bash
# shellcheck disable=SC2046

# Git aliases
alias gco='git checkout'
alias gcm='git commit -s'
alias gpu='git push -u origin HEAD'
alias gam='git commit -a --amend --no-edit'
alias glo='git log'


# gfd - git fuzzy delete: delete git branch (including remote branches)
gfd() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" | fzf --multi ) &&
  git branch -D $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}
