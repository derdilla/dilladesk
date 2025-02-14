#!/usr/bin/sh

#
# Run when a zsh is first opened.
#


# env
export PATH=$PATH:/home/derdilla/.local/flutter/bin
export ANDROID_HOME="/home/derdilla/.android"
export CHROME_EXECUTABLE="/sbin/chromium"

# Zsh settings (Lines configured by zsh-newuser-install)
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' max-errors 2
zstyle :compinstall filename '/home/derdilla/.zshrc'

autoload -Uz compinit
compinit
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
setopt nomatch
bindkey -v


# Setup aliases and custom tool integrations
alias ls='eza'
alias l='eza -al'
PS1='[\u@\h \W]\$ '


# https://github.com/sharkdp/bat?tab=readme-ov-file#how-to-use
export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
alias bathelp='bat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}


# Shell env vairables
eval "$(ssh-agent -s)" > /dev/null
eval "$(mise activate zsh)"

eval "$(starship init zsh)"
