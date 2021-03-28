# _             _
#| |__  __ _ __| |_  _ _ __
#| '_ \/ _` (_-< ' \| '_/ _|
#|_.__/\__,_/__/_||_|_| \__|

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="[\u@\h \W]\$(git_branch)\$ "
export EDITOR='vim'
export VISUAL='vim'

shopt -s autocd
# Aliases
alias ls="ls --color=tty"
alias la="ls -A"
alias ll="ls -Al"
alias ..="cd .."
alias c="clear"
alias ic="vim ~/.config/i3/config"
alias isc="vim ~/.config/i3status/config"
alias dc="cd ~/dwm && vim config.h"
alias sc="vim ~/st/config.h"
alias gitdf='git --git-dir=$HOME/proj/dotfiles --work-tree=$HOME'
alias apt="sudo apt"
alias upd="sudo apt update -y && sudo apt upgrade -y"
alias font="sudo fc-cache -fv"
alias br="vim ~/.bashrc"
alias vr="vim ~/.vimrc"

# Sets .bash_history size
export HISTFILESIZE=50000
export HISTSIZE=50000

# Duplicate lines and lines starting with a space are not put into the history
export HISTCONTROL=ignoreboth

# Automatically start X server after tty login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
