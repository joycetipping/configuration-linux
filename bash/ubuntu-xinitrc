#!/bin/bash

profile=e16

sleep 2 && (
  xrandr --dpi 72
  xrdb ~/.Xdefaults) &

case $profile in
  e16)
  ecryptfs-mount-private
  gnome-settings-daemon &
  sleep 2 && nm-applet --sm-disable &
  xrandr --dpi 96
  exec e16
  ;;

  gnome)
  exec gnome-session
esac
