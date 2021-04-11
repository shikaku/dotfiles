export LANG="ru_RU.UTF-8"
export BASH_SILENCE_DEPRECATION_WARNING=1
export CLICOLOR=yes

set -o vi

# set editor by default
EDITOR="nvim"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=100000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# fix ssh-agent auth for multiplexers
_ssh_auth_save() {
    ln -sf "$SSH_AUTH_SOCK" "$HOME/.ssh/ssh-auth-sock.$HOSTNAME"
}
alias tmux='_ssh_auth_save ; export HOSTNAME=$(hostname) ; tmux'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

if [ -f ~/.bash_other ]; then
    . ~/.bash_other
fi
