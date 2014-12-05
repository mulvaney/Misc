
GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
NO_COLOUR="\[\033[0m\]"
GREEN="\[\033[0;32m\]"

BLACK="\[\033[0;30m\]"
DARK_GRAY="\[\033[1;30m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GREEN="\[\033[1;32m\]"
RED="\[\033[0;31m\]"
LIGHT_RED="\[\033[1;31m\]"
PURPLE="\[\033[0;35m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
WHITE="\[\033[1;37m\]"

source ~/Misc/bash/git-prompt.sh
PS1="$LIGHT_GREEN\h $GREEN\W$CYAN\$(__git_ps1)$NO_COLOUR\n\$ "


alias l='/bin/ls -F'
alias la='l -a'
alias ll='l -l'

alias pd=pushd
alias pop=popd
