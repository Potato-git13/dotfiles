# History
HISTFILE=~/.zsh_history
HISTSIZE=3000
SAVEHIST=4000

unsetopt beep
bindkey -e

zstyle :compinstall filename '/home/potato/.zshrc'
autoload -Uz compinit
autoload -U colors && colors
compinit
# Prompt
PS1="[%B%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[blue]%}%M%{$reset_color%}]:%{$fg[magenta]%}%~%{$reset_color%}$%b "
# Colorize commands
alias ls='ls --color=auto'
alias grep= 'grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Get my aliases 
if [ -f ~/.aliasrc ]; then
    . ~/.aliasrc
fi
# Get PATHs
if [ -f ~/.pathrc ]; then
    . ~/.pathrc
fi
#eval "$(abra hook zsh)"
