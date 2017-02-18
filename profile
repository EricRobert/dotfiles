# ~/.profile: executed by the command interpreter for login shells.

# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# if running bash
if [ -n "$BASH_VERSION" ] ; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ] ; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set GOROOT so it prefers the local version of GO
if [ -d "$HOME/bin/go" ] ; then
    export GOROOT="$HOME/bin/go"
else
    if [ -d "/usr/local/go" ] ; then
        export GOROOT="/usr/local/go"
    fi
fi

# set global GOPATH and adjust PATH to include binaries
if [ -z "$GOROOT" ] ; then
    if [ -d "$HOME/code/go" ] ; then
        export GOPATH=$HOME/code/go
    fi
    if [ -d "$HOME/Code/go" ] ; then
        export GOPATH=$HOME/Code/go
    fi
    PATH="$GOPATH/bin:$GOROOT/bin:$PATH"
fi
