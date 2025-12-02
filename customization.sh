#!/bin/bash

# GTK teması uygula
xfconf-query -c xsettings -p /Net/ThemeName -s "Fluent-purple-Dark"

# XFWM tema uygula
xfconf-query -c xfwm4 -p /general/theme -s "Fluent-purple-Dark"

# İkon teması uygula
xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"

# Duvar kağıdı
WALL="/usr/share/SatellaOS/backgrounds/anime-girl.jpg"

# Tüm XFCE arka plan alanlarına uygula
for p in $(xfconf-query -c xfce4-desktop -l | grep last-image); do
    xfconf-query -c xfce4-desktop -p "$p" -s "$WALL"
done

# XFWM yenile (opsiyonel)
xfwm4 --replace >/dev/null 2>&1 &
