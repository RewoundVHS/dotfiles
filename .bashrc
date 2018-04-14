#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export PS1="[\[\e[36m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] \[\e[35m\]\W\[\e[m\]] \\$ "
# >>> Added by cnchi installer
BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/vim

(cat ~/.cache/wal/sequences &)

alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

alias vim="vim --servername vim"
alias ll="ls -lhA"

alias update="sudo pacman -Syu"

stty -ixon
