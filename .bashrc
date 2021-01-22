#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|
# by robert5800

# Default shell prompt
PS1="\w >> "

# Aliases
alias ls="ls --color=auto"
alias la="ls -A"
alias ll="ls -Al"
alias ..="cd .."
alias gitdf='git --git-dir=$HOME/projects/dotfiles --work-tree=$HOME'

# Automatically run start X server after tty login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi