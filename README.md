# hyprland

Hyprland config on Arch Linux

## Config branch

Represents the ``~/.config`` folder containing :

### a waybar config

- Sound with pulseaudio
- wifi status
- CPU use
- Memory used
- Temperature
- backlight
- battery
- clock and calendar


### a dmenu config

Dark config, two colums.


### an alacritty config

80% opacity


### a dunst notification config

Notification appears on the bottom center (may be changed later)

### an hyprlock config 

In ``hypridle.conf`` and  ``hyprlock.conf`` we have: 
- an automatic i3lock and systemctl suspend when unused for 5 minutes.
- an automatic i3lock and systemctl suspend when lid close
- Display image, user and keyboard used.
- lockers instead of dots for pssword input



### Scripts

#### battery

Script to send notification when battery is under 15% (needs some fixing but overall works)


#### layout
Scripts to change langage (here either French and English) by the keymap Mod + SPACE in the ``hyrprland.conf`` file.
