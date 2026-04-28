if command -v dbus-launch > /dev/null && test -z "${DBUS_SESSION_BUS_ADDRESS}" 
then 
 	eval $(dbus-launch --sh-syntax --exit-with-session)
fi

eval $(gnome-keyring-daemon --start --components=secrets,pkcs11,ssh)
export SSH_AUTH_SOCK
export GNOME_KEYRING_CONTROL
export XDG_CURRENT_DESKTOP=dwm
export DESKTOP_SESSION=dwm

dbus-update-activation-environment --systemd DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP DESKTOP_SESSION
systemctl --user import-environment DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP DESKTOP_SESSION

~/.fehbg &
# picom -b &
sxhkd &
bar &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
exec dwm
