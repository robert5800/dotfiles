# Defined in - @ line 1
function ls --wraps='ls -hN --color=auto --group-directories-first' --description 'alias ls=ls -hN --color=auto --group-directories-first'
 command ls -hN --color=auto --group-directories-first $argv;
end
