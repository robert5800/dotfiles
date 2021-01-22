# dotfiles
My personal dotfiles (work in progress)

## Features

### i3wm
- Gruvbox color scheme
- Tabbed layout (for small screens)
- De-cluttered i3bar
  - Time, volume, internet speed
  - Scroll on the bar to change screenbrightness
- Reduced & simplified keybindings
- Working multimedia keys (sound & brightness)
  - Sound volume: ``alt+1/2/ESC (mute)``
  - Screen brightness: ``alt+3/4``
- Take screenshots with ``Printscreen``
### Screenshot:
![Screenshot](2021-01-07-094134_1366x768_scrot.png)
  
## Requirements:
- i3wm
  - font-awesome (for icons)
  - pulseaudio + pavucontrol (volumecontrol)
  - scrot (screenshot utility)
  
 ## Installation 
 Debian
 
 ```
 $ sudo apt install i3 fonts-font-awesome pulseaudio pavucontrol brightnessctl scrot 
 ```
 
 Arch
 ```
 sudo pacman -S i3 ttf-font-awesome pulseaudio pavucontrol brightnessctl scrot
 ```
