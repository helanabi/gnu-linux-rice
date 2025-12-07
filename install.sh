#!/bin/sh

CONFIG="$HOME/.config"

## System-wide config ##

sudo pacman -Syu --needed $(<pkgs)
sudo cp "$PWD/xorg-keyboard" "/etc/X11/xorg.conf.d/00-keyboard.conf"

## User config ##

mkdir -p "$CONFIG/i3"
ln -s "$PWD/i3" "$CONFIG/i3/config"

mkdir -p "$CONFIG/i3status"
ln -s "$PWD/i3status" "$CONFIG/i3status/config"

mkdir -p "$CONFIG/nvim"
ln -s "$PWD/nvim" "$CONFIG/nvim/init.vim"

ln -s "$PWD/git" "$HOME/.gitconfig"

XFCE_CONF="$CONFIG/xfce4/xfconf/xfce-perchannel-xml/"
mkdir -p "$XFCE_CONF"
ln -s "$PWD/xfce4-terminal" "$XFCE_CONF/xfce4-terminal.xml"

ln -s "$PWD/emacs" "$HOME/.emacs"
