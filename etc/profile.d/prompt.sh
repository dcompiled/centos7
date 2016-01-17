##-ANSI-COLOR-CODES-##
Color_Off="\[\e[0m\]"
###-Regular-###
Red="\[\e[0;31m\]"
Green="\[\e[0;32m\]"
Purple="\[\e[0;35\]"
####-Bold-####
BRed="\[\e[1;31m\]"
BPurple="\[\e[1;35m\]"
Blue="\[\e[0;34m\]"
Cyan="\[\e[0;36m\]"

#PS1="$Cyan\u$Color_Off $Blue\w$Color_Off \$ "
source /usr/local/bin/git-prompt.sh

# Display a git prompt that includes branch name
PROMPT_COMMAND='__git_ps1 "$Cyan\u$Color_Off $Blue\w$Color_Off" "\\\$ "'
GIT_PS1_DESCRIBE_STYLE='describe'
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1
