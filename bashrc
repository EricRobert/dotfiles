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