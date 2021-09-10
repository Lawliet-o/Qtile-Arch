#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}


#Special python script for auto wallpaper and colorscheme change
pywal-colors.py


#feh --bg-fill ~/.config/qtile/flower.jpg &
conky -c ~/.config/conky/conky.conf &

#starting utility applications at boot time
lxsession &
run nm-applet &
run pamac-tray &
numlockx on &
blueman-applet &
#flameshot &
#picom --config $HOME/.config/picom/picom.conf &
picom --config .config/picom/picom-blur.conf --experimental-backends &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
dunst &
picom &
#starting user applications at boot time
run volumeicon &
run cbatticon -u 5 &
#run discord &
#nitrogen --random --set-zoom-fill &
#run caffeine -a &
#run vivaldi-stable &
run chromium &
run thunar &
#run dropbox &
#run insync start &
#run spotify &
#run atom &
#run telegram-desktop &
