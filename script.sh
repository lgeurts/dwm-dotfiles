#!/bin/bash
CONF=$HOME/.config
SUCKLESS=$HOME/suckless
ICONS=$HOME/.local/share/icons

cd "$HOME" || exit
sudo pacman -Sy base-devel xorg-server xorg-xinit xorg-xrandr libx11 libxinerama libxft libxext libxcb xcb-util-renderutil xcb-util-image pixman dbus libconfig libglvnd pcre libev uthash xorgproto xcb-util meson ninja webkit2gtk dunst pcmanfm flameshot feh brightnessctl pamixer ttf-ubuntu-mono-nerd ttf-jetbrains-mono playerctl imlib2 starship fzf

if [ ! -d "$CONF" ]; then
  mkdir .config
fi

if [ ! -d "$SUCKLESS" ]; then
  mkdir "$HOME/.config/suckless"
fi

cp -r dwm-dotfiles/{dmenu,dwm,slock,slstatus,st} "$HOME"/.config/suckless
cp -r dwm-dotfiles/dunst "$HOME"/.config

if [ ! -d "$ICONS" ]; then
  mkdir -p $HOME/.local/share/icons
fi

cp -R dwm-dotfiles/dunst-icons $HOME/.local/share/icons/dunst

touch .xinitrc
echo "exec dwm" >.xinitrc

touch .bashrc
echo "eval $(fzf --bash)" >.bashrc
echo "eval $(starship init bash)" >.bashrc 

cd "$HOME"/.config/suckless/st || exit
sudo make clean install
cd "$HOME"/.config/suckless/dwm || exit
sudo make clean install
cd "$HOME"/.config/suckless/dmenu || exit
sudo make clean install
cd "$HOME"/.config/suckless/slock || exit
sudo make clean install
cd "$HOME"/.config/suckless/slstatus || exit
sudo make clean install

sudo chmod +x "$HOME"/.config/suckless/dwm/scripts/{powermenu.sh,volumenotifications.sh,brightnessnotifications.sh,config.sh}

cd "$HOME" || exit
mkdir .dwm
cp "$HOME"/dwm-dotfiles/autostart.sh "$HOME"/.dwm/
mkdir Pictures
cp -r "$HOME"/dwm-dotfiles/assets/Wallpapers "$HOME"/Pictures/

cd "$HOME/.config" || exit
sudo git clone https://github.com/fdev31/picom.git
cd picom/ || exit
sudo git submodule update --init --recursive
sudo meson --buildtype=release . build
sudo ninja -C build

echo "---------------------"
echo "Now, just type 'startx'"
echo "---------------------"
