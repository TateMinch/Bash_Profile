# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bash_profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.pre.bash"
#!/bin/bash
##### Enable bash_functions ###########
if [ -f ~/profile/bash_functions ]; then
source ~/profile/bash_functions
fi

##### Enable bash_aliases ###########
if [ -f ~/profile/bash_aliases ]; then
source ~/profile/bash_aliases
fi

PS1='\[\e[35m\]\w \n > \[\e[0m\]'

eval "$(/opt/homebrew/bin/brew shellenv)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"
