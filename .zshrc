# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

export LS_COLORS="di=34:*.sh=32:*.exe=36"

export NVM_DIR="$HOME/.nvm"
##### Enable bash_functions ###########
if [ -f ~/profile/bash_functions ]; then
source ~/profile/bash_functions
fi

##### Enable bash_aliases ###########
if [ -f ~/profile/bash_aliases ]; then
source ~/profile/bash_aliases
fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
