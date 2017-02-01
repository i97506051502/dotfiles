# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
       	. /etc/bashrc
fi

# User specific aliases and functions


# ----------------------------------------------------------------------
# Generally
# ----------------------------------------------------------------------

set -o vi

PROMPT_COMMAND=chpwd

export PATH=$PATH:/Users/go/Dropbox/Misc/arukas


# ----------------------------------------------------------------------
# Python
# ----------------------------------------------------------------------

# export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.5/site-packages
export PYTHONDONTWRITEBYTECODE=1


# ----------------------------------------------------------------------
# PS1
# ----------------------------------------------------------------------
#PS1_TYPE=DEV_NORMAL
#PS1_TYPE=DEV_ROOT
PS1_TYPE=PRO_NORMAL
#PS1_TYPE=PRO_ROOT

case ${PS1_TYPE} in
    DEV_NORMAL)
        # Development, normal user.
        PS1='\[\033[1;32m\][\[\033[1;36m\]$USER\[\033[0;37m\]@\[\033[1;36m\]$HOSTNAME \[\033[1;33m\]$PWD\[\033[1;32m\]]\[\033[0m\] \$ ';;
    DEV_ROOT)
        # Development, root user.
        PS1='\[\033[1;32m\][\[\033[1;35m\]$USER\[\033[0;37m\]@\[\033[1;36m\]$HOSTNAME \[\033[1;33m\]$PWD\[\033[1;32m\]]\[\033[0m\] \$ ';;
    PRO_NORMAL)
        # Production, normal user.
        PS1='\[\033[1;32m\][\[\033[1;36m\]$USER\[\033[0;37m\]@\[\033[1;35m\]$HOSTNAME \[\033[1;33m\]$PWD\[\033[1;32m\]]\[\033[0m\] \$ ';;
    PRO_ROOT)
        # Production, root user.
        PS1='\[\033[1;32m\][\[\033[1;35m\]$USER\[\033[0;37m\]@\[\033[1;35m\]$HOSTNAME \[\033[1;33m\]$PWD\[\033[1;32m\]]\[\033[0m\] \$ ';;
esac

# \[\033[ColorCodem\]

# Color Codes
# Black 0;30
# White 1;37
# Red 0;31
# Light Red 1;31
# Yellow 1;33
# Blue 0;34
# Light Blue 1;34
# Green 0;32
# Light Green 1;32
# Cyan 0;36
# Light Cyan 1;36
# Purple 0;35
# Light Purple 1;35
# Dark Gray 1;30
# Light Gray 0;37


# ----------------------------------------------------------------------
# PS2
# ----------------------------------------------------------------------
# PS2 is applied after line delimiter '\'.


# ----------------------------------------------------------------------
# Aliases
# ----------------------------------------------------------------------
alias ll='ls -ltr'
alias lll='ls -ltra'
alias less='less -qRi'
# alias vi='/bin/nvim'


# ----------------------------------------------------------------------
# Functions
# ----------------------------------------------------------------------
function set_iterm2_window_title() {
    EXEC_COMMAND='/bin/echo -ne "\033]0;${USER}@${PWD}\007"'
    eval "${EXEC_COMMAND}"
}

function chpwd() {
    echo -ne "\033]0;$(pwd | rev | awk -F \/ '{ print "/"$1"/"$2 }'| rev)\007"
}

# function ssh() {
#     local window_name=$(tmux display -p '#{window_name}')
#     command ssh $@
#     tmux rename-window $window_name
# }

# function mosh() {
#     local window_name=$(tmux display -p '#{window_name}')
#     command mosh $@
#     tmux rename-window $window_name
# }


