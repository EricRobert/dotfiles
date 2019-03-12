# ~/.bashrc: executed by bash(1) for non-login shells.

# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc) for examples.

. ~/.profile

# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# run /etc/bashrc if it exists
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

PLATFORM=`uname`

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=4096

shopt -s histappend
shopt -s checkwinsize

if [[ $PLATFORM != "Darwin" ]]; then
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
fi

alias df='df -kTh'
alias du='du -kh'
alias ll='ls -al'

export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Repeat command N times.
function repeat()
{
    local i max
    max=$1; shift;
    for ((i=1; i <= max ; i++)); do
        eval "$@";
    done
}
