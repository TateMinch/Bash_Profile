#!/bin/bash
alias c="clear"
alias st="git status"
alias python="python3"
alias ..="cd .."
alias ...="cd ../.."
PROMPT='%F{magenta}%2d > %f'
alias l="ls -t"
alias pip="pip3"
alias ll="ls -la"
alias branch="git branch"
alias cat="bat"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
