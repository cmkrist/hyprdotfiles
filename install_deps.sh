#!/usr/bin/bash
# Start Update
sudo pacman -Syu --noconfirm
####################
###    SYSTEM    ###
####################
# Audio
sudo pacman -S pipewire pipewire-pulse wireplumber pavucontrol --noconfirm
# Build tools
sudo pacman -S gcc g++ nodejs build-devel ninja cmake meson go rust --noconfirm
# Video Drivers
sudo pacman -S vulkan-radeon lib32-vulkan-radeon mesa mesa-utils --noconfirm
# Video Libraries
sudo pacman -S ffmpeg mpv --noconfirm
####################
###   DESKTOP    ###
####################
# Daemons
sudo pacman -S dunst --noconfirm
# Qt
sudo pacman -S qt5-wayland qt6-wayland --noconfirm
# System
sudo pacman -S hyprland hyprpolkitagent noto-fonts uwsm xdg-desktop-portal-hyprland --noconfirm
# Utilities
sudo pacman -S eza waybar --noconfirm
####################
###     AUR      ###
####################
mkdir -p ~/.tmp && cd ~/.tmp
# YAY
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
# Elephant (https://github.com/abenz1267/elephant)
yay -S elephant --noconfirm
yay -S elephant-archlinuxpkgs --noconfirm
yay -S elephant-bluetooth --noconfirm
yay -S elephant-bookmarks --noconfirm
yay -S elephant-calc --noconfirm
yay -S elephant-clipboard --noconfirm
yay -S elephant-desktopapplications --noconfirm
yay -S elephant-files --noconfirm
yay -S elephant-menus --noconfirm
yay -S elephant-nirisessions --noconfirm
yay -S elephant-runner --noconfirm
yay -S elephant-snippets --noconfirm
yay -S elephant-symbols --noconfirm
yay -S elephant-unicode --noconfirm
yay -S elephant-websearch --noconfirm
yay -S elephant-windows --noconfirm
# Walker (App Launcher)
yay -S walker --noconfirm
# Bluetooth
yay -S overskride --noconfirm
####################
### APPLICATIONS ###
####################
# Making this require input incase I don't want them installed
sudo pacman -S brave code mission-center vesktop vlc
####################
###     DONE     ###
####################
clear
echo <<EOF
=================================
  _   _      _____         _     
 | | | |_   |_   _|__  ___| |__  
 | |_| | | | || |/ _ \/ __| '_ \ 
 |  _  | |_| || |  __/ (__| | | |
 |_| |_|\__, ||_|\___|\___|_| |_|
        |___/                    
=================================
- All Done! Probably should reboot :)
EOF