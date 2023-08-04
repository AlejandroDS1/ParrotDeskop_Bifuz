#!/bin/bash

awk '/^[a-z]/ && comando {print} {comando=""} /^#/{comando=$1}&& last {print $0,"\t",last, "\t", comando} {last=""} /^#/{last=$0}' ~/.config/sxhkd/sxhkdrc |
    column -t -s $'\t' |
    rofi -dmenu -i -markup-rows -no-show-icons -width 1000 -lines 15 -yoffset 40
