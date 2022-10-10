#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#

reset="\[\e[0m\]"

#Magic Bash
next_hue()
{
	color=$((31 + (++color % 7)))
	PS1="\[\e[1;${color}m\]\\$ $reset"
}

random_hue()
{
	color=$((RANDOM % 7 + 31))
	PS1="\[\e[1;${color}m\]\\$ $reset"
}

PROMPT_COMMAND="random_hue"
