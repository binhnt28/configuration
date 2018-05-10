[ -z "$TMUX" ] && { tmux -2 attach || exec tmux -2 new-session && exit; }

PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$ '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi