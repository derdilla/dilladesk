#!/usr/bin/sh

#
# Run when a zsh is first opened.
#


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
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
alias bathelp='bat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}


# Shell env vairables
eval "$(ssh-agent -s)" > /dev/null
