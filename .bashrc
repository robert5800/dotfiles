# ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
# ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
# ██████╔╝███████║███████╗███████║██████╔╝██║
# ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║
# ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
# ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="[\u@\h \W]\$(git_branch)\$ "
#PS1="\n\w\$(git_branch)\n> "
#PS1="\W > "
export EDITOR='vim'
export VISUAL='vim'
export PATH=/home/robert/bin:$PATH
shopt -s autocd

if [[ "$TERM" == *rxvt* ]]; then
   exec zsh
fi

# Aliases
alias ls="ls --color=tty --group-directories-first"
alias la="ls -A --group-directories-first"
alias ll="ls -Al"
alias ..="cd .."
alias c="clear"
alias cc="cd && clear"
alias ic="vim ~/.config/i3/config"
alias isc="vim ~/.config/i3status/config"
alias dc="cd ~/.config/dwm && vim config.h"
alias sc="vim ~/st/config.h"
alias gitdf='git --git-dir=$HOME/proj/dotfiles --work-tree=$HOME'
alias upd="sudo apt update && sudo apt upgrade"
alias font="sudo fc-cache -fv"
alias br="vim ~/.bashrc"
alias vr="vim ~/.vimrc"
alias xr="vim ~/.Xresources"
alias where="which"

# Sets .bash_history size
export HISTFILESIZE=50000
export HISTSIZE=50000

# Duplicate lines and lines starting with a space are not put into the history
export HISTCONTROL=ignoreboth

# Automatically start X server after tty login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
