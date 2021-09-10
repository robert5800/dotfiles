#  _             _
# | |__  __ _ __| |_  _ _ __
# | '_ \/ _` (_-< ' \| '_/ _|
# |_.__/\__,_/__/_||_|_| \__|


export EDITOR='vim'
export VISUAL='vim'
export PATH=/home/robert/.local/bin:$PATH
export PATH=/home/robert/.local/bin/scripts:$PATH
shopt -s autocd

# Prompt
#PS1="\e[0;32m[\u@\h \W]\$(git_branch)\$\e[m "
PS1="\e[0;32m\w \e[0;33m> \e[0;37m"
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Sets .bash_history size
export HISTFILESIZE=50000
export HISTSIZE=50000

# Duplicate lines and lines starting with a space are not put into the history
export HISTCONTROL=ignoreboth

# Load alias file
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# Automatically start X server after tty login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

#eval "$(starship init bash)"
