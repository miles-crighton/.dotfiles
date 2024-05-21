#!/bin/zsh

alias vim='nvim'
alias ls='exa'
alias cat='bat'
alias src='source ~/.zshrc'

##### Git #####
alias gs='git status'
alias gd='git diff'
alias gl='git l'
alias gaa='git add -A'
alias ga='git add'
alias gac='git ac'
alias gc='git commit'
alias gcf='git commit --fixup'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gp='git pull'
alias gP='git push'
alias gPo='git push -u origin HEAD'
alias gPf='git push --force-with-lease'
alias gC='git checkout'
alias gC-='git checkout -'
alias gCm='if git rev-parse --verify main > /dev/null 2>&1; then git checkout main; else git checkout master; fi'
alias gCb='git checkout -b'
alias gaacan='gaa && gcan'
alias gri='git rebase -i HEAD~10 --autosquash'
alias gr-='git rebase -'

##### Misc #####
alias tf='terraform'
