#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

complete -cf sudo

alias todo='todo.sh'
alias yay='paru'
alias icat='kitten icat'
alias ls='ls --color=auto -la'
alias grep='rg'
alias vim='nvim'
alias add='pacman -S'
alias battery='acpi -b'
alias unadd='pacman -Rs'
alias www='w3m https://duckduckgo.com'
alias reload='source ~/.bashrc'
PS1='[\u@\h \W]\$ '
