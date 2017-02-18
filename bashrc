# ~/.bashrc: executed by bash(1) for non-login shells.

# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc) for examples.

# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# run /etc/bashrc if it exists
if [ -f /etc/bashrc ]; then
      . /etc/bashrc
fi

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=4096

shopt -s histappend
shopt -s checkwinsize

alias df='df -kTh'
alias du='du -kh'
alias ll='ls -al'

export TERM=xterm-256color
export GREP_OPTIONS='--color=auto'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Repeat command N times.
function repeat()
{
    local i max
    max=$1; shift;
    for ((i=1; i <= max ; i++)); do
        eval "$@";
    done
}
