#!/bin/sh

# change the default cross cursor to left pointer cursor
xsetroot -cursor_name left_ptr &

# hide mouse cursor while not using it
unclutter -idle 2 &

# set both english and arabic layout
setxkbmap -layout us,ar -option grp:lalt_lshift_toggle &

# launch slstatus for dwm 
slstatus &

# network manager
nm-applet &

# speed up keyboard
xset r rate 280 40 &

# set random wallpaper
feh --bg-fill --randomize ~/wallpapers/* &

# start dunst notification server
dunst &

# launch picom compositor
picom --experimental-backend &

# source Xresources file
xrdb -merge ~/.Xresources &&

xmodmap -e "keycode 117 = Return" -e "keycode 36 = Next" &&


exec dwm 
