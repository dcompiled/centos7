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

__set_window_title() {
	if [ "$TERM" == "screen-256color" -a -n "$TMUX" ]; then
		# if in a tmux session, set the window title with truncated username
		printf "\ek${USER:0:1}@$HOSTNAME $PWD\e\\"
	else
		# update the terminal window title
		echo -e "\e]2;${USER}@${HOSTNAME} : $PWD\a"
	fi
}

# Display a git prompt that includes branch name
source /usr/local/bin/git-prompt.sh
PROMPT_COMMAND='__git_ps1 "$Cyan\u$Color_Off $Blue\w$Color_Off" "\\\$ "'
GIT_PS1_DESCRIBE_STYLE='describe'
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1

# Set tmux window title as u@hostname, trim strings to keep 17 char max length
PROMPT_COMMAND+='; __set_window_title '
