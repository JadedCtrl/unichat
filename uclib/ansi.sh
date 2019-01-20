#!/bin/sh

# --------------------------------------
# colors

BLACK="$(tput setaf 0 2> /dev/null)"
RED="$(tput setaf 1 2> /dev/null)"
GREEN="$(tput setaf 2 2> /dev/null)"
YELLOW="$(tput setaf 3 2> /dev/null)"
BLUE="$(tput setaf 4 2> /dev/null)"
MAGENTA="$(tput setaf 5 2> /dev/null)"
CYAN="$(tput setaf 6 2> /dev/null)"
WHITE="$(tput setaf 7 2> /dev/null)"
ORANGE="$RED"
GRAY="$CYAN"
BROWN="$GREEN"

BOLD="$(tput bold 2> /dev/null)"

RESET="$(tput sgr0)"



# --------------------------------------
# generic color functions

# STRING --> STRING
# return the color-string of a certain username
function name_color {
	username="$1"

	if test $COLOR -eq 8; then
		name_color8 "$username"
	elif test $COLOR -eq 255; then
		name_color255 "$username"
	fi
}

# STRING --> STRING
# return a colored username
function colorize_name {
	username="$1"

	if test $COLOR -eq 8; then
		echo "$(name_color8 "$username")${username}${RESET}"
	elif test $COLOR -eq 255; then
		echo "$(name_color255 "$username")${username}${RESET}"
	fi
}

# --------------------------------------

# STRING STRING --> STRING
# colorize all non-message references to a given username (generic)
function colorize_name_instances {
	string="$1"
	username="$2"

	echo "$string" \
	| sed 's/ '"$username"':/ '"$(colorize_name "$username")"':/g' \
	| sed 's/message '"$username"' /message '"$(colorize_name "$username")"' /g' \
	| sed 's/user '"$username"'/user '"$(colorize_name "$username")"'/g' \
	| sed 's/User '"$username"'/User '"$(colorize_name "$username")"'/g'
}

# STRING STRING --> STRING
# colorize all lines that are a message of the given username (generic)
function colorize_name_lines {
	string="$1"
	username="$2"

	echo "$string" \
	| sed 's/'"$username"':/'"$(name_color "$username")$username"':/g'
}



# --------------------------------------

# STRING --> STRING
# embolden all action-lines
function action_bold {
	txt="$1"

	echo "$txt" \
	| sed 's/^\*/'"$BOLD"'\*/'
}

# --------------------------------------

# STRING --> STRING
# add an ANSI reset escape-code at the end of every line
function reset_ends {
	string="$1"
	
	echo "$string" \
	| sed 's/$/'"$RESET"'/g'
}

# STRING --> STRING
# apply basic formatting/cleanup actions to an ANSI string
function ansi_process {
	txt="$1"

	txt="$(reset_ends "$txt")"
	txt="$(action_bold "$txt")"

	echo "$txt"
}



# --------------------------------------

# STRING NUMBER --> STRING
# convert regular text to ANSI-formatted text
function txt_to_ansi {
	txt="$1"
	width="$2"


	for username in $usernames
	do
		if echo "$txt" | grep "$username" > /dev/null
		then
			txt="$(colorize_name_instances "$txt" "$username")"
			txt="$(colorize_name_lines "$txt" "$username")"
		fi
	done

	ansi_process "$(txt_process "$txt")" | fold  -sw $width
}
