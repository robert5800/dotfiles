#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|
#
# by robert

# Default shell prompt
#PS1="\[\033[34m\]\w \[\033[1;31m\]❯\[\033[1;33m\]❯\[\033[1;32m\]❯\[\033[0;37m\] "
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="[\u@\h \W]\$(git_branch)\$ "
#PS1="\w "
#PS1="\n\[\033[0;31m\]\342\224\214\342\224\200$([[ $? != 0 ]] && echo "[\[\033[0;37m\]\342\234\227\[\033[0;31m\]]\342\224\200")[\[\033[0;34m\]\T \$(date +%m.%d.%y)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\u\[\033[0;31m\]]\342\224\200\[\033[0;31m\][\[\033[0;33m\]\$PWD\[\033[0;31m\]]\n\342\224\224\342\224\200\342\224\200>\[\033[0m\]"
export EDITOR='micro'
export VISUAL='micro'
force_color_prompt=yes

# Aliases
alias ls="ls --color=tty"
alias la="ls -A"
alias ll="ls -Al"
alias ..="cd .."
alias c="clear"
alias ic="micro ~/.config/i3/config"
alias isc="micro ~/.config/i3status/config"
alias dc="cd ~/dwm && micro config.h"
alias sc="micro ~/st/config.h"
alias gitdf='git --git-dir=$HOME/proj/dotfiles --work-tree=$HOME'
alias apt="sudo apt"
alias upd="sudo apt update -y && sudo apt upgrade -y"
alias font="sudo fc-cache -fv"

# Enable bash completion.
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Sets .bash_history size
export HISTFILESIZE=50000
export HISTSIZE=50000

# Add a timestamp to each command
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S:   "

# Duplicate lines and lines starting with a space are not put into the history
export HISTCONTROL=ignoreboth

# Automatically start X server after tty login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
