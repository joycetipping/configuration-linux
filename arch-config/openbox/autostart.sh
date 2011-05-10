# Openbox autostart
# Based heavily on the one that ships with CrunchBang linux
#
# More information about this can be found at:
# http://openbox.org/wiki/Help:Autostart

./setup-background                  # A wrapper for nitrogen
./setlayout 0 6 6 0                 # Set up virtual desktops

synergys -c ~/.synergy.conf

lxsession &                             # Start session manager
xfce4-power-manager &                   # Enable power management
cairo-compmgr &                         # Enable Eyecandy

(sleep 2s && tint2) &                   # Panel
(sleep 3s && conky -q) &                # Notifications
