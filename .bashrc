#!/bin/sh
shopt -s autocd

# History file
export HISTFILE=~/.config/shell/bash_history
export HISTFILESIZE=50000
export HISTSIZE=50000
export HISTCONTROL=ignoreboth

# Environment variables
export EDITOR='vim'
export VISUAL='vim'
export PATH=/home/robert/bin:$PATH
export PATH=/home/robert/bin/Discord:$PATH
export PATH=/home/robert/.emacs.d/bin:$PATH

#(cat ~/.cache/wal/sequences &)

# Prompt
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
#PS1='[\u@\h \W]\$ '
#export PS1="\h\w\[\e[34m\]\`git_branch\`\[\e[m\] "
#PS1="\e[1;29m[\u@\h \W]\$(git_branch)\$\e[m "
PS1="\[\e[1;32m\][\W]\$(git_branch) \[\e[0;29m\]"
#PS1="\e[1;32m\w \e[2;33m> \e[0;37m"
#PS1="\e[0;32m\w \u@\h\n\e[0;33m> \e[0;37m"

# Load alias file
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"


# Automatically start X server after tty login
#if command -v tmux &> /dev/null && [ -z "$TMUX"  ]; then
#    tmux attach -t default || tmux new -s default
#fi
#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#  exec startx
#fi

#eval "$(starship init bash)"
#. "$HOME/.cargo/env"
