if command -v dbus-launch > /dev/null && test -z "${DBUS_SESSION_BUS_ADDRESS}" 
then 
 	eval $(dbus-launch --sh-syntax --exit-with-session)
fi

# eval $(gnome-keyring-daemon --start --components=secrets,pkcs11,ssh)
# export SSH_AUTH_SOCK
# export GNOME_KEYRING_CONTROL

~/.fehbg &
picom -b &
sxhkd &
bar &
# descomente depois de instalar /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
exec dwm
