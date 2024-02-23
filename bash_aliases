#!/bin/bash
eval "$(/opt/homebrew/bin/brew shellenv)"
alias c="clear"
alias st="git status"
alias python="python3"
alias ..="cd .."
alias ...="cd ../.."
PS1='%F{magenta}%~%f
%F{magenta}❯%f '

alias l="ls -t"
alias pip="pip3"
alias ll="ls -la"
alias branch="git branch"
alias cat="bat"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
