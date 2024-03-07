#!/bin/bash
eval "$(/opt/homebrew/bin/brew shellenv)"
alias c="clear"
alias st="git status"
alias python="python3"
alias ..="cd .."
alias ...="cd ../.."
#PS1='%F{magenta}%~%f
#%F{magenta}❯%f '

precmd() {
  local git_branch
  git_branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ -n $git_branch ]]; then
    PS1="%F{cyan}%B%3~ | %F{magenta}$git_branch%f%f%b
%F{green}>%f "
  else
    PS1="%F{cyan}%B%3~%f%b
%F{green}> %f"
  fi
}

precmd

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
