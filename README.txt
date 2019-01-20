===============================================================================
UNICHAT.SH                                       Read Unichat in your terminal!
===============================================================================

With unichat.sh, you can read Unichat the way gods intended: in your terminal,
in pretty ANSI-formatted text! <3

unichat.sh supports regular monochrome text, 8-bit ANSI colors, and (if you're
one of those lucky lads who gets them) 255-range ANSI colors!

https://unichat-comic.com



----------------------------------------
PRE-REQUISITES
----------------------------------------
You'll need:
	* `lynx` installed
	* a POSIX-compatible shell (tested with `pdksh` and `bash`)
	* "gendl" in your $PATH
	* "uclib/" in your CWD or in the dir that "unichat.sh" resides in



----------------------------------------
USAGE
----------------------------------------

UNICHAT.SH
--------------------
Run unichat.sh in your terminal, like so:

	unichat.sh id [width] [color]

id is the only required option.

id, of course, means the comic ID that you want to read.
width is the width of each line-- default is 80 characters.
color is the color-type you want-- 0, 8, and 255 are the only valid options.


UCGEN.SH
--------------------
ucgen.sh will download all unichat comics in the format you provide.
It's for stripping the site, basically. :)

	ucgen.sh [width] [color]

The comics will be output into a subdir of your cwd, with a name based on
the width and color values you provided, I.E., "80-255" or something like that.


GENDL
--------------------
gendl is just for downloading things, as a frontend for "curl" "wget" etc.
It's here for portability reasons-- you probably don't want to use it yourself.

But here's usage, if you decide you do:

	gendl [-o path] url 

gendl downloads the URL to stdout, unless you specify an output file with "-o".



----------------------------------------
BORING STUFF
----------------------------------------
License is CC-0
Author is Jenga Phoenix <jadedctrl@teknik.io>
Sauce is at https://git.eunichx.us/unichat
