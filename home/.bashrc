# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

#
# ----------------------------------------------------------------------
# miscellaneous
# ----------------------------------------------------------------------
#

#
# General
#

set -o vi

#
# bash
#

PS1="\[\033[1;34m\]\u\[\033[1;37m\]@\[\033[1;31m\]\h:\[\033[1;33m\]\w\[\033[0;32m\] $ "

# aws-cli command completion
complete -C aws_completer aws


#
# ----------------------------------------------------------------------
# aliases
# ----------------------------------------------------------------------
#

#
# General
#

alias SU='sudo -H -s'

#
# bash
#

alias color_normal='PS1="\[\033[1;34m\]\u\[\033[1;37m\]@\[\033[1;32m\]\h:\[\033[1;33m\]\w\[\033[0;32m\] $ "'
alias color_warning='PS1="\[\033[1;34m\]\u\[\033[1;37m\]@\[\033[1;33m\]\h:\[\033[1;33m\]\w\[\033[0;32m\] $ "'
alias color_danger='PS1="\[\033[1;34m\]\u\[\033[1;37m\]@\[\033[1;31m\]\h:\[\033[1;33m\]\w\[\033[0;32m\] $ "'

#
# dstat
#

alias dstat_cpu='sudo dstat -ta --top-cpu'
alias dstat_io='sudo dstat -ta --top-io --top-bio'
alias dstat_all='sudo dstat -af'
alias dstat_vmstat='sudo dstat -v'


#
# ----------------------------------------------------------------------
# functions
# ----------------------------------------------------------------------
#

function pck() { FIRST_LETTER=; REST_LETTER=; PS_ARG='['']'; ps aux | grep ; }

function mck() { ps alx | awk '{printf ("%d\t%s\n", ,3)}' | sort -nr | head -10; }

# comment added.
# comment added.
