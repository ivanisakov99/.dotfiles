#!/usr/bin/env sh
# -*- shell-script -*-
# Shell-neutral configuration - should be called from shell-specific
# *shrc files

# This file should be robust to the following bash options:
#   -o nounset: unset variables cannot be used.
# ${VAR_NAME:-default} syntax is used to provide a default value if VAR_NAME is null or unset.
# An empty string can be used as the default value in this way: ${VAR_NAME:-}
#   -o errexit: all command must return a successful error code of 0.
# Commands can be prefixed with '!' if they're expect to return a non-0 exit code.
#   -o pipefail: all commands in a pipe must succeeded

#################### Changing colors for ls and file completion ####################
# MY_LS_COLORS="LS_COLORS_NORM"          # MY_LS_COLORS="LS_COLORS_BOLD"
# or define your own, say: LS_COLORS_DARK='...'
#                          MY_LS_COLORS="LS_COLORS_DARK"
# before you source this file. For color codes see # coloring matters # in this file

# You can tune the behavior of this file with the following config knobs:
# OVERRIDE_EDITOR="your favorite editor" # set several editing prefs at once
# EDITOR="your favorite editor"          # also sets editing prefs, as above
# AUTO_TITLE_SCREENS="NO"                # (or "YES") to turn screen auto-titling on or off
# LONG_TITLE="YES"                       # Set a longer title, including host and more path

export GREP_COLOR=${GREP_COLOR:-1;35}    # Set the color for grep matches

DIRSTACKSIZE=20     # Number of directories in your pushd/popd stack

# Programs will use this by default if you need to edit something
# default to vim, so we don't surprise anyone, unless EDITOR or OVERRIDE_EDITOR are set
export EDITOR=${OVERRIDE_EDITOR:-${EDITOR:-vim}} 
export VISUAL=$EDITOR # some programs use this instead of EDITOR
if [[ ${EMACS:-} == "t" ]]; then
    export PAGER=cat            # otherwise funkiness in M-x shell
else
    export PAGER=less           # less is more :)
fi

#################### Coloring matters ####################
# Color codes: 00;{30,31,32,33,34,35,36,37} and 01;{30,31,32,33,34,35,36,37}
# are actually just color palette items (1-16 in gnome-terminal profile)
# your pallette might be very different from color names given at (http://man.he.net/man1/ls)
# The same LS_COLORS is used for auto-completion via zstyle setting (in this file)
# 
LS_COLORS_BOLD='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.tex=01;33:*.sxw=01;33:*.sxc=01;33:*.lyx=01;33:*.pdf=0;35:*.ps=00;36:*.asm=1;33:*.S=0;33:*.s=0;33:*.h=0;31:*.c=0;35:*.cxx=0;35:*.cc=0;35:*.C=0;35:*.o=1;30:*.am=1;33:*.py=0;34:'
LS_COLORS_NORM='no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:do=00;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.deb=00;31:*.rpm=00;31:*.jar=00;31:*.jpg=00;35:*.jpeg=00;35:*.gif=00;35:*.bmp=00;35:*.pbm=00;35:*.pgm=00;35:*.ppm=00;35:*.tga=00;35:*.xbm=00;35:*.xpm=00;35:*.tif=00;35:*.tiff=00;35:*.png=00;35:*.mpg=00;35:*.mpeg=00;35:*.avi=00;35:*.fli=00;35:*.gl=00;35:*.dl=00;35:*.xcf=00;35:*.xwd=00;35:*.ogg=00;35:*.mp3=00;35:*.wav=00;35:*.tex=00;33:*.sxw=00;33:*.sxc=00;33:*.lyx=00;33:*.pdf=0;35:*.ps=00;36:*.asm=0;33:*.S=0;33:*.s=0;33:*.h=0;31:*.c=0;35:*.cxx=0;35:*.cc=0;35:*.C=0;35:*.o=0;30:*.am=0;33:*.py=0;34:'
MY_LS_COLORS=${MY_LS_COLORS:-LS_COLORS_BOLD}
eval export LS_COLORS=\${$MY_LS_COLORS}

#################### Aliases ####################
#Don't alias grep until after sourcing the files above, could get bad version
#of grep that doesn't understand --color
alias grep='grep --color=auto'

alias ls='ls --color=auto'
alias ll='ls -lh'
