#!/bin/sh

# --------------------------------------
# main

# STRING --> STRING
# return the 255 color of a username
function name_color255 {
	username="$1"
	result_stack=""

	hex=$(name_color_hex "$username");	result_stack="$result_stack $?"
	hex255=$(hex_to_255 $hex);		result_stack="$result_stack $?"
	color="$(color_255 $hex255)";		result_stack="$result_stack $?"


	if echo "$result_stack" | grep 1 > /dev/null
	then
		color="$(name_color8 "$username")"
	fi

	echo "$color"
}



# --------------------------------------
# helper functions

# STRING --> STRING
# return the hexcode of a username (from CSS)
function name_color_hex {
	username="$1"

	if test ! -e /tmp/255.html; then
		gendl -o /tmp/255.html "http://unichat-comic.com/comics/1"
	fi

	cat /tmp/255.html \
	| grep ".${username} { color:" \
	| sed 's/.*color: #//' \
	| sed 's/ \!important.*//'
}

# STRING --> NUMBER
# return the 255 number of a color hexcode
# from https://unix.stackexchange.com/a/269085
function hex_to_255 {
	hex=${1#"#"}
	r=$(printf '0x%0.2s' "$hex" 2>/dev/null)
	g=$(printf '0x%0.2s' ${hex#??} 2>/dev/null)
	b=$(printf '0x%0.2s' ${hex#????} 2>/dev/null)
	printf '%03d' "$(( (r<75?0:(r-35)/40)*6*6 + 
			(g<75?0:(g-35)/40)*6   +
			(b<75?0:(b-35)/40)     + 16 ))" 2>/dev/null
}

# NUMBER --> STRING
# return 255 ANSI escape-code of a color
# frlom https://unix.stackexchange.com/a/269085
function color_255 {
	for c; do
		printf '\e[38;5;%dm' $c  2>/dev/null
	done
}
