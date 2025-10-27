#!/bin/sh
mullvad-vpn &
fcitx5 &

# wlr-randr --output HDMI-A-3 --left-of DP-3 --right-of eDP-1 --mode=2560x1440@300 --output eDP-1 --mode=1920x1200@165 &
# NVIDIA Only

# wlr-randr --output HDMI-A-3 --mode=2560x1440@300 --output eDP-1 --mode=1920x1200@165 --left-of HDMI-A-3 --output DP-1 --right-of HDMI-A-3 &
# For 3 Monitors

wlr-randr --output HDMI-A-3 --mode=2560x1440@300 --output eDP-1 --mode=1920x1200@165 --left-of HDMI-A-3
# For 2 Monitors

# wlr-randr --output HDMI-A-3 --mode=2560x1440@300 --output eDP-1  --left-of HDMI-A-3 --output DP-3 --right-of HDMI-A-3 &

# wlr-randr --output eDP-1 --mode=1920x1200@60 &

# wlr-randr --output eDP-1 --mode=1920x1200@165 &

gammastep -P -O 3000 &

systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots &

systemctl --user start xdg-desktop-portal-wlr &
systemctl --user start xdg-desktop-portal-gtk &

/usr/lib/polkit-kde-authentication-agent-1 &
