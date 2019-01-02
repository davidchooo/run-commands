#Aliases
alias update="sudo apt-get update && sudo apt-get upgrade && sudo apt full-grade && sudo apt autoremove"
#only for WSL
alias open="cmd.exe /C"
alias o="open"
alias cdrive="cd /mnt/c/Users/david"
alias ece391="cd /mnt/c/Users/david/Desktop/UIUC/junior2018/ece391/ece391vm/ece391_share/work"
alias cs225="cd /mnt/c/Users/david/Desktop/CS225"

# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# OWN CODE


enable tab completion
source ~/git-completion.bash    #enables tab completion

# Colors
black="\[\033[0;30m\]"
red="\[\033[0;31m\]"
green="\[\033[0;32m\]"
yellow="\[\033[0;33m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
cyan="\[\033[0;36m\]"
reset="\[\033[0m\]"

# Bold colors
Bblack="\[\033[1;30m\]"
Bred="\[\033[1;31m\]"
Bgreen="\[\033[1;32m\]"
Byellow="\[\033[1;33m\]"
Bblue="\[\033[1;34m\]"
Bpurple="\[\033[1;35m\]"
Bcyan="\[\033[1;36m\]"
Bwhite="\[\033[1;37m\]"

# Underline
Ublack="\[\033[4;30m\]"
Ured="\[\033[4;31m\]"
Ugreen="\[\033[4;32m\]"
Uyellow="\[\033[4;33m\]"
Ublue="\[\033[4;34m\]"
Upurple="\[\033[4;35m\]"
Ucyan="\[\033[4;36m\]"
Uwhite="\[\033[4;37m\]"

# Background
On_black="\[\033[40m\]"
On_red="\[\033[41m\]"
On_green="\[\033[42m\]"
On_yellow="\[\033[43m\]"
On_blue="\[\033[44m\]"
On_purple="\[\033[45m\]"
On_cyan="\[\033[46m\]"
On_white="\[\033[47m\]"

# High Intensty
Iblack="\[\033[0;90m\]"
Ired="\[\033[0;91m\]"
Igreen="\[\033[0;92m\]"
Iyellow="\[\033[0;93m\]"
Iblue="\[\033[0;94m\]"
Ipurple="\[\033[0;95m\]"
Icyan="\[\033[0;96m\]"
Iwhite="\[\033[0;97m\]"

# Bold High Intensty
BIblack="\[\033[1;90m\]"
BIred="\[\033[1;91m\]"
BIgreen="\[\033[1;92m\]"
BIyellow="\[\033[1;93m\]"
BIblue="\[\033[1;94m\]"
BIpurple="\[\033[1;95m\]"
BIcyan="\[\033[1;96m\]"
BIwhite="\[\033[1;97m\]"

# High Intensty backgrounds
On_Iblack="\[\033[0;100m\]"
On_Ired="\[\033[0;101m\]"
On_Igreen="\[\033[0;102m\]"
On_Iyellow="\[\033[0;103m\]"
On_Iblue="\[\033[0;104m\]"
On_Ipurple="\[\033[10;95m\]"
On_Icyan="\[\033[0;106m\]"
On_Iwhite="\[\033[0;107m\]"

# Change command prompt
source ~/git-prompt.sh  #allows commit IDs to show up
export GIT_PS1_SHOWDIRTYSTATE=1     #shows whether all changes have been saved
export PS1="$Bgreen\u$purple\$(__git_ps1)$cyan \W $ $Bwhite"
_COLORS="ow=01;36;40" && export LS_COLORS

