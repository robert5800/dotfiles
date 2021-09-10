# dotfiles
My dotfiles for Debian GNU/Linux

## Installation

```
wget https://raw.githubusercontent.com/robert5800/dotfiles/main/autoinstall.sh
chmod +x autoinstall.sh && ./autoinstall.sh
```
Note: this only works on Debian based distributions

### Requirements
- [i3-gaps](https://github.com/Airblader/i3)
- [Cozette](https://github.com/slavfox/Cozette) (for displaying glyphs)
- [GNU Unifont](http://unifoundry.com/unifont/index.html) (Terminus is a great alternative)
- [Iosevka](https://typeof.net/Iosevka/)

### Useful packages

``apt install i3 fonts-font-awesome pulseaudio pavucontrol brightnessctl scrot rxvt-unicode nitrogen``

## How to maintain dotfiles
A simple yet effective way to manage dotfiles in git is by using a git bare repository

### Initializing the repo
1. Create a git bare repository in a new (preferably hidden) folder, such as ~/.cfg or ~/.config/dotfiles. ``git init --bare $HOME/.config/dotfiles``
2. Make an alias in your shell's configuration file (such as .bashrc) that you will use to interact with your dotfiles. ``alias gitdf='git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME'``
3. Using the newly created alias (refresh your shell first) set a flag that makes not explicitly tracked files to not show up when you type `gitdf status` (you probably dont want to track every single file in your home directory). ``gitdf config --local status.showUntrackedFiles no``

### Workflow
To start tracking your config files:
1. Check the status of the git repo `gitdf status`
2. Add all the config files you want to track (e.g. `gitdf add .bashrc`)
3. Commit the changes `gitdf commit -m "Update .bashrc"`
4. Create a github repo named 'dotfiles' (or whatever you want, really) and connect the local repo to it `gitdf remote add origin https://github.com/yourusername/dotfiles`
6. When you are done, push the changes `gitdf push`. The changes should now be visible on github.
