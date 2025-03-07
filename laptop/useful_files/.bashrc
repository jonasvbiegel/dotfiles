#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1=' \u@\h \W > '
PS1='\W > '

set completion-ignore-case on

#funny function
cdw() { cd "$@" && ls; }

pdf() { zathura $1 & disown; }

if [ -f ~/.bash_aliases ]; then
.  ~/.bash_aliases
fi
