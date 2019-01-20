#!/bin/sh
########################################
# name: unichat.sh
# desc: download a unichat page to ansi
#       -formatted, colored text.
#       perfect for reading on terminal!
########################################

if test -e uclib; then
	prefix="./"
else
	prefix="$(dirname "$(echo "$0")")/"
fi

. "${prefix}uclib/usernames.sh"
. "${prefix}uclib/ansi.sh"
. "${prefix}uclib/255color.sh"
. "${prefix}/uclib/8color.sh"
	

# --------------------------------------
# generic 

# NIL --> STRING
# read from stdin until eof hit; return all input
# good for writing functions that take piped info
function reade {
	local stack=""

	while read input
	do
		stack="$(printf '%s\n%s' "$stack" "$input")"
	done

	echo "$stack"
}



# --------------------------------------
# fetch

# NUMBER --> STRING
# actual download/return HTML of unichat comic of given id
function unichat_fetch {
	id="$1"

	gendl -o "$TEMP" "http://unichat-comic.com/comics/${id}/"
	cat "$TEMP"
}



# --------------------------------------
# html manipulations

# |STRING --> STRING
# remove everything from piped unichat html except for
# the actual comic part
function isolate_log {
	html="$(reade)"

	echo "$html" \
	| sed '1,/Unichat log/d' \
	| sed '/article-foot/,$d'
}

# |STRING --> STRING
# add tags to the isolated log to make it valid HTML
function isolate_to_html {
	log="$(reade)"
	
	header="<html><head><title>Unichat</title></head><body>"
	footer="</body></html>"

	printf "%s\n%s\n%s" "$header" "$log" "$footer"
}

# |STRING --> STRING
# convert piped HTML into plain-text-- via w3m
function html_to_txt {
	html="$(reade)"

	echo "$html" \
	| echo "$(lynx -stdin -width 1000 -nolist -dump)"
}



function whitespace_trim {
	string="$1"

	echo "$string" \
	| sed 's/^   //g' \
	| sed 's/^  //g'
}

function unichat_to_txt {
	id="$1"

	gendl "http://unichat-comic.com/comics/${id}/" \
	| isolate_log \
	| isolate_to_html \
	| html_to_txt
}

function txt_process {
	txt="$1"

	txt="$(whitespace_trim "$txt")"

	echo "$txt"
}

function txt_to_txt {
	txt="$1"
	width="$2"

	txt_process "$txt" | fold -sw $width
}



# --------------------------------------
# invocation

ID="1"
WIDTH="80"
COLOR=8
TEMP="$(mktemp)"

if test -n "$1"; then
	ID="$1"
fi
if test -n "$2"; then
	WIDTH="$2"
fi
if test -n "$3"; then
	COLOR=$3
fi

# --------------------------------------

function invoke {
	if test $COLOR -eq 0; then
		txt_to_txt "$(unichat_to_txt "$ID")" $WIDTH
	else
		txt_to_ansi "$(unichat_to_txt "$ID")" $WIDTH
	fi

	rm $TEMP
}


if test -z "$1"; then
	echo "usage: unichat.sh id [width] [color]"
	exit 2
fi

invoke
