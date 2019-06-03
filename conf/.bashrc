date
echo '"If it makes you nervous, you are doing it right."
-Donald Glover'

PROMPT_COMMAND='echo -ne "\033]0; ${USER}: ${PWD}  \007"'

# Variables:
# -----------------
export K2="/media/cvance/K2"


# LS:
#------------------
alias ls='ls --color'
alias la='ls -ah --color'
alias ll='ls -lh --color'
alias lt='ls -th --color'
# alias ls='ls'
# alias la='ls -ah'
# alias ll='ls -lh'
# alias lt='ls -th'
alias lsjava='la *.java'
alias lscpp='la *.cpp'
alias lscs='la *.cs'


# Implicit Program Flags:
#------------------
alias pacman='pacman --color always'
alias grep='grep --color=auto'
alias df='df -h'
alias clc='clear && source ~/.bashrc'
alias ctagsR='ctags -R *'


# Git Stuff 
#------------------
alias gita='git add'
alias gitbr='git branch -av'
alias gitch='git checkout'
alias gitc='git commit'
alias gitl='git log'
alias gits='git status'

parse_git_branch(){
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


# Path:
# -----------------
#alias cs780='cd ~/cs780'
alias k2='cd /media/cvance/K2'
alias currentProgram='cd $CURRENT_CS780_PROGRAM'
alias cvance='cd $CVANCE'


# Executables:
# -----------------
alias open='explorer.exe `wslpath -w "$1"`' 
#alias mountUSB='sudo mount -t drvfs ($1): /mnt/($1)'
alias USBeject='umount /media/christian/*'
#alias minecraft='java -jar ~/Documents/Minecraft/Minecraft.jar'


# Defaults: 
# -----------------
export HISTSIZE=10000

# Bold
# to remove bold, remove \[$(tput bold)\]
#export PS1="\[$(tput bold)\]\[\033[38;5;14m\][\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;14m\]@\[$(tput bold)\]\h\[$(tput bold)\]\[\033[38;5;14m\]]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;207m\]:\w\[$(tput bold)\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Git Branch 
export PS1="\[\033[38;5;14m\][\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;14m\]@\h\[\033[38;5;14m\]]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;207m\]:\w $\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[\033[38;5;226m\]\$(parse_git_branch) \[$(tput sgr0)\]\[\033[38;5;15m\]"


# Some PS1 Color Codes:
# -----------------
# 226m = Yellow
# 207m = Purple
# 14m = Cyan


# ls Colors :
#------------------
# Component to color
# di = directory
# fi = file
#
# Fist argument 
# 0   = default colour
# 1   = bold
# 4   = underlined
# 5   = flashing text
#
# Possible Colors
# 31  = red
# 32  = green
# 33  = orange
# 34  = blue
# 35  = purple
# 36  = cyan
# 37  = grey
# 90  = dark grey
# 91  = light red
# 92  = light green
# 93  = yellow
# 94  = light blue
# 95  = light purple
# 96  = turquoise
# 97  = white
LS_COLORS=$LS_COLORS:'di=0;93:fi=0;97:ex=1;97:'; export LS_COLORS
#source /opt/ros/kinetic/setup.bash
#source ~/catkin_ws/devel/setup.bash

