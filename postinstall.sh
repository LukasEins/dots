#! /usr/bin/env bash
echo "use this with archinstall minimal install"
sleep 2
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
sudo pacman -S --noconfirm --needed xdg-user-dirs
xdg-user-dirs-update
sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-emoji noto-fonts-cjk
sudo pacman -S --noconfirm --needed lxappearance
sudo pacman -S --noconfirm --needed dunst
sudo pacman -S --noconfirm --needed mpv
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed hypr
sudo pacman -S --noconfirm --needed wofi
sudo pacman -S --noconfirm --needed wezterm
sudo pacman -S --noconfirm --needed cliphist
sudo pacman -S --noconfirm --needed grim slurp
sudo pacman -S --noconfirm --needed polkit-gnome
sudo pacman -S --noconfirm --needed reflector
sudo pacman -S --noconfirm --needed thunar thunar-archive-plugin thunar-volman
sudo pacman -S --noconfirm --needed qt5-wayland qt6-wayland
yay -S --noconfirm -needed swww waybar-hyprland
sudo pacman -S --noconfirm --needed xdg-desktop-portal-hyprland
sudo pacman -S --noconfirm --needed flatpak
sudo pacman -S --noconfirm --needed sddm
systemctl enable sddm.service
systemctl enable reflector.timer
systemctl disable dhcpcd.service
systemctl stop dhcpcd.service
cd ~
mkdir .themes
cd .themes
wget https://github.com/esmaeilytabar/gruvbox-full-gtk.git
unzip gruvbox-full-gtk.zip
rm gruvbox-full-gtk.zip 
cd ~
mkdir .icons
cd .icons
wget https://github.com/SylEleuth/gruvbox-plus-icon-pack.git
unzip gruvbox-plus-icon-pack
rm -r gruvbox-plus-icon-pack.zip
cd ~
echo "finished"
