##-ANSI-COLOR-CODES-##
Color_Off="\[\033[0m\]"
###-Regular-###
Red="\[\033[0;31m\]"
Green="\[\033[0;32m\]"
Purple="\[\033[0;35\]"
####-Bold-####
BRed="\[\033[1;31m\]"
BPurple="\[\033[1;35m\]"
Blue="\[\033[0;34m\]"
Cyan="\[\033[0;36m\]"

PS1="$Cyan\u$Color_Off $Blue\w$Color_Off \$ "


#PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD} (/etc/profile.d/prompt.sh)\007"'
PROMPT_COMMAND='/usr/local/bin/bash-prompt'
