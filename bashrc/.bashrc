#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source /usr/share/doc/pkgfile/command-not-found.bash
source /usr/share/bash-completion/bash_completion

export HISTCONTROL="erasedups:ignorespace"

export GPG_TTY=$(tty)
