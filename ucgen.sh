#!/bin/sh
########################################
# name: gen.sh
# desc: generate txt-versions of all
#       unichat comics, in the given
#       width/color format
########################################

WIDTH="$1"
COLOR="$2"

if test -z "$1" -o -z "$2"
then
	echo "usage: ucgen.sh width color"
	exit 2
fi

dir="$COLOR-$WIDTH"
mkdir "$dir"

last_comic="$(gendl "http://unichat-comic.com/latest-comic")"

i=1
while test "$i" -lt "$last_comic"
do
	echo "Page $i..."
	sh unichat.sh $i $WIDTH $COLOR > "$dir/$i.txt"
	i=$(echo "$i + 1" | bc)
done
