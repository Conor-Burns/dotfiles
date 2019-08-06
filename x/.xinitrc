#!/bin/sh
wal -R
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
exec i3
xcalib ~/dotfiles/monitor/.config/monitor/softproof.icc
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
