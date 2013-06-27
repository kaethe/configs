#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

echo $1
case $1 in 
	kde) exec startkde;;
  	*) exec i3;;
esac
#exec startkde
#exec myMonitorsetup
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
