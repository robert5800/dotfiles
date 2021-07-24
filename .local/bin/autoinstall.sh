#!/bin/bash
# Author: Robert
# License: GNU GPLv3

# Simple script to install dotfiles + other essentials on a new Debian based distro
# Work in progress. Run at your own risk.

cd && clear

### Dotfiles ###

git clone https://github.com/robert5800/dotfiles
cd dotfiles
rm -rf .git
cp * ..
cd .. && rm dotfiles

# Home cleanup
mkdir -p ~/dl ~/img ~/docs ~/.config ~/.local/src ~/.local/bin ~/.config/i3 ~/.config/bspwm

# Packages

## Essentials
sudo apt-get install i3-gaps brightnessctl pulseaudio pavucontrol scrot nitrogen git vim xclip steam rxvt-unicode unclutter mpv sxiv xorg zathura openjdk-11-jre youtube-dl cargo

## Brave
sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

## Alacritty
cargo install alacritty

## Minecraft
wget https://launcher.mojang.com/download/Minecraft.deb
sudo apt install ./Minecraft.deb

## Spaceship prompt
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
