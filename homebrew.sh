#!/bin/bash
green=$(tput setaf 2)
gold=$(tput setaf 3)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
red=$(tput setaf 1)
default=$(tput sgr0)
gray=$(tput setaf 243)


if hash brew 2>/dev/null; then
    echo ""
else
    echo -e "\n${red}Homebrew not found.\n'${cyan}Installing Homebrew${default}'"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


function brewInstall(){
    if brew ls --versions $1 >/dev/null; then
        v=$(brew ls --versions $1)
        echo -e "\n${green} ✓ ${cyan}$1 Installed ${default}\n   $v"
    else
        echo -e "\n${red}$1 not found.\n${default}running '${cyan}brew install $1${default}'"
        brew install $1 >/dev/null
    fi
}

function brewCaskInstall(){
    if brew ls --cask --versions $1 >/dev/null; then
        v=$(brew ls --cask --versions $1)
        echo -e "\n${green} ✓ ${cyan}$1 Installed ${default}\n   $v"
    else
        echo -e "\n${red}$1 not found.\n${default}running '${cyan}brew install --cask $1${default}'"
        brew install --cask $1 >/dev/null
    fi
}

PACKAGES=(
    bat
    ctop
    diff-so-fancy
    docker
    docker-compose
    fig
    jq
    lastpass-cli
    node@14
    tableplus
    tldr
    tree
)

for p in ${PACKAGES[@]}; do
  brewInstall $p
done

CASKS=(
    google-chrome
    rectangle
    spotify
    visual-studio-code
    iterm2
)

for c in ${CASKS[@]}; do
  brewCaskInstall $c
done

# Set up diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

