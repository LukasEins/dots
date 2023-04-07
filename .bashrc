#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#

#PS1="[\u@\w]\[$(tput sgr0)\]"

PS1='\[\e[1;91m\][\[\e[m\]\[\e[1;92m\]\u\[\e[m\]\[\e[1;95m\]@\h\[\e[m\]\[\e[1;97m\] \W\[\e[m\]\[\e[1;91m\]]$ \[\e[m\]'

#reset="\[\e[0m\]"

#Magic Bash
#next_hue()
#{
#	color=$((31 + (++color % 7)))
#	PS1="\[\e[1;${color}m\]\\$ $reset"
#}

#random_hue()
#{
#	color=$((RANDOM % 7 + 31))
#	PS1="\[\e[1;${color}m\]\\$ $reset"
#}

#PROMPT_COMMAND="random_hue"

export EDITOR="vim"
export TERMINAL="kitty"
export BROWSER="firefox"
alias pf='pfetch'
alias nf='neofetch'
alias bt='btop'
alias nv='nvtop'
alias untar='tar -xvf'
alias uninstall='sudo pacman -Rns'
alias install='sudo pacman -S'
alias i3conf='vim $HOME/.config/i3/config'
alias polyconf='sudo vim $HOME/.config/polybar/config'
alias vimconf='vim $HOME/.config/'
alias untar='tar -xvzf'
alias clock='tty-clock -cn'
alias ssh="kitty +kitten ssh"
