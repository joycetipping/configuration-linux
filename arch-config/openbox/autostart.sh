# Openbox autostart
# Based heavily on the one that ships with CrunchBang linux
#
# More information about this can be found at:
# http://openbox.org/wiki/Help:Autostart

~/projects/configuration/arch-config/openbox/setup-background                  # A wrapper for nitrogen
obsetlayout 0 6 6 0                 # Set up virtual desktops

synergys -c ~/.synergy.conf

lxsession &                         # Start session manager
xfce4-power-manager &               # Enable power management
cairo-compmgr &                     # Enable Eyecandy

# Detect and configure touchpad. See 'man synclient' for more info.
if egrep -iq 'touchpad' /proc/bus/input/devices; then
    synclient VertEdgeScroll=1 &
    synclient TapButton1=1 &
fi

(sleep 2s && tint2) &               # Panel
(sleep 3s && conky -q) &            # Notifications
