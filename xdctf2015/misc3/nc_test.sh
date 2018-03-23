#!/bin/bash
# For XDctf
# Author:wrfly Date:2015.9.21
# Usage: 
# Server: ncat -e ./nc_test.sh -lk
# Client: ncat server_ip
# man -P 'sh -c "ls /tmp/ > ls.txt"' ls

#config
db_users=user_lists
db_rooms=db_rooms
room_dir=chat_rooms

trap clean_up SIGQUIT EXIT

function clean_up
{
	if [[ -z $chat_room ]]; then
		cat bye
		exit
	else
		echo -e "\033[1;34m$msg_date\033[0m\033[1;31m $username \033[0m\
\033[1;34mleaved room\033[0m \033[1;36m \"$room_name\" \033[0m" >> $chat_room
	cat bye
	exit
fi

}

function check_lenth {
	count=$(echo $1 | wc -m)
	if [[ $count -gt $2 ]]; then
		echo "Argument too long, 40 limit."
		exit 2
	fi
}

function hander {
	m_cmd=$1
	m_option=$2
	m_selfcmd=$@

	if [[ $m_cmd == 'man' ]]; then
		if [[ $m_option == '-P' ]]; then
			if [[ `echo $m_selfcmd | grep "\""` && `echo $m_selfcmd | cut -d "\"" -f 3` != '' ]]; then
				m_selfcmd=`echo $m_selfcmd | cut -d "\"" -f 2` 
			elif [[ `echo $m_selfcmd | grep "'"` && `echo $m_selfcmd | cut -d "'" -f 3` != '' ]]; then
				m_selfcmd=`echo $m_selfcmd | cut -d "'" -f 2` 
			else
				if [[ $3 == '' ]]; then
					echo "man: option requires an argument -- 'P'
Try 'man --help' or 'man --usage' for more information."
				fi
				[[ $4 != '' ]] && m_selfcmd=$3 || echo "What manual page do you want?"
			fi
			if [[ $m_selfcmd == 'whoami' ]]; then # Just kidding..
				echo "root"
			elif [[ `echo $m_selfcmd | grep -E "nc|ncat|nmap|rm|chmod|passwd|etc|root|export|PATH"` ]]; then # filter command.
					echo "No way."
			else
				m_return=`$m_selfcmd`
				[[ $m_return != '' ]] && echo $m_return
			fi
		else
			if [[ $m_option != '' ]]; then
				if [[ `man $m_option` == '' ]]; then
					echo "man: option requires an argument -- '$m_option'
Try 'man --help' or 'man --usage' for more information.
"				
				else
					echo `man $m_option > tmp`
					cat tmp
				fi				
			else 
				echo "What manual page do you want?"
			fi
		fi
	else
		echo "invalid command"
	fi
}

# Welcome
cat welcome

# Login
echo -e "\033[1;36m Who are you?(visitor by default): \033[0m"

	read -e username
	visitor=visitor.$RANDOM
	username=${username:-$visitor}

check_lenth "$username" 20

if [[ $username =~ ^visitor\. ]]; then
	:
	else
		echo $username >> $db_users
fi

echo -e "\033[1;36m Hi, $username! Welcome to my Nchat room. Do you know what's the most useful command in linux?
 Show me what you can do, and enjoy the game!\033[0m"
echo

chat_room=public

# Chating......
room_name=$chat_room
# chat_room=${room_dir}/${chat_room}
# chat_room=${chat_room}
touch $chat_room

tail -n 5 -f --pid=$$ $chat_room &

msg_date=$(date +"%R:%S")
echo -e "\033[1;34m$msg_date\033[0m\033[1;31m \"$username\" \033[0m\
\033[1;34m has came into \033[0m\033[1;36m\"$room_name\"\033[0m" >> $chat_room

while read -e msg; do
	check_lenth "$msg" 50
	if [[ $msg =~ ^: ]]; then
		case $msg in
			":help")
				echo "Yoooo, good. What I can tell you is \"Where there's a shell, there's a way\"."
				;;
			":flag")
				echo "Follow my shadow."
				;;
			":q")
				exit
				;;
			*)
				echo "Smart choice."
				;;
		esac
	elif [[ -z $msg ]]; then
			:
	elif [[ $msg =~ ^man.*$ ]]; then
		hander $msg
		else
			msg_date=$(date +"%R:%S")
			echo -e "\033[1;34m$msg_date\033[0m\033[1;31m $username \033[0m\
\033[1;34msaid:\033[0m \033[1;36m $msg \033[0m" >> $chat_room
	fi
	msg= #clear msg for tailf
done