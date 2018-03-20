# ~/.profile: executed by the command interpreter for login shells.

# this file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

MNT="/mnt/home/$USER"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$MNT/bin" ] ; then
    PATH="$MNT/bin:$PATH"
fi

# set GOROOT so it prefers the local version of GO
if [ -d "$HOME/bin/go" ] ; then
    GOROOT="$HOME/bin/go"
else
    if [ -d "$MNT/bin/go" ] ; then
        GOROOT="$MNT/bin/go"
    else
        if [ -d "/usr/local/go" ] ; then
            GOROOT="/usr/local/go"
        fi
    fi
fi

# set global GOPATH and adjust PATH to include binaries
if [ -n $GOROOT ] ; then
    if [ -d "$HOME/code/go" ] ; then
        export GOPATH=$HOME/code/go
    else
        if [ -d "$MNT/code/go" ] ; then
            export GOPATH=$MNT/code/go
        fi
    fi

    export GOROOT=$GOROOT
    PATH="$GOPATH/bin:$GOROOT/bin:$PATH"
fi
