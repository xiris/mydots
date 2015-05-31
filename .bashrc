#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
     . ~/.bash_aliases
fi

export PS1="\[$(tput sgr0)\]\033[38;5;15m\033[38;5;197m\u\[$(tput sgr0)\]\033[38;5;15m\033[38;5;15m@\[$(tput sgr0)\]\033[38;5;15m\033[38;5;214m\h\[$(tput sgr0)\]\033[38;5;15m\033[38;5;15m:\[$(tput sgr0)\][\[$(tput sgr0)\]\033[38;5;15m\033[38;5;64m\w\[$(tput sgr0)\]\033[38;5;15m\033[38;5;15m]\[$(tput sgr0)\]:\[$(tput sgr0)\]\n\[$(tput sgr0)\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"

export LANG="en_US.UTF-8"

# [remove] Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin" 

