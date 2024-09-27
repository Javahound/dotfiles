{
	"layer": "top",
	"modules-left": ["custom/launcher","hyprland/workspaces","cpu","memory","custom/media","tray"],
	"modules-center": ["hyprland/tags","clock"],
	"modules-right": ["hyprland/window","hyprland/language","custom/updates","custom/wallpaper","pulseaudio","custom/power"],
	
	"pulseaudio": {
		"tooltip": false,
		"scroll-step": 5,
		"format": "{icon} {volume}%",
		"format-muted": "{icon} {volume}%",
		"on-click":"pavucontrol",
		"format-icons": {
			"default": ["", "", ""]
		}
	},

    "hyprland/tags": {
		"num-tags": 6
    },
	"network": {
		"tooltip": false,
		"format-wifi": "  {essid}",
		"format-ethernet": ""
	},
	"backlight": {
		"tooltip": false,
		"format": " {}%",
		"interval":1,
        "on-scroll-up": "light -A 5",
		"on-scroll-down": "light -U 5"
	},
    "battery": {
        "states": {
            "good": 95,
            "warning": 30,
            "critical": 20
        },
        "format": "{icon}  {capacity}%",
        "format-charging": " {capacity}%",
        "format-plugged": " {capacity}%",
        "format-alt": "{time} {icon}",
        "format-icons": ["", "", "", "", ""]
    },
	"tray":{
		"icon-size":18,
		"spacing": 10
	},
    "clock": {
    	"interval": 1,	
	"tooltip": true,
        "format": "{:%H:%M:%S}",
	"tooltip-format": "{:%d. %B %Y}"
    },
    "cpu": {
        "interval": 15,
        "format": " {}%",
        "max-length": 10
    },
    "memory": {
        "interval": 30,
        "format": " {}%",
        "max-length": 10
    },
    "custom/media": {
        "interval": 30,
        "format": "{icon} {}",
        "return-type": "json",
        "max-length": 20,
        "format-icons": {
            "spotify": " ",
            "default": " "
        },
        "escape": true,
        "exec": "$HOME/.config/system_scripts/mediaplayer.py 2> /dev/null",
        "on-click": "playerctl play-pause"
    },
    "custom/launcher":{
        "format": " ",
        "on-click": "wofi --show drun",
        "on-click-right": "killall rofi"
    },
    "custom/power":{
        "format": " ",
        "on-click": "bash ~/.config/rofi/leave/leave.sh",
    },
    "hyprland/language":{
	"format": "⌨  {short}"	
    },
    "hyprland/window":{
	"format": "🖥  {}",
	"rewrite": {
	    "(.*) — Mozilla Firefox": "🌐  Mozilla Furryfox",
	    "(.*) — Mozilla Firefox Private Browsing": "😳  \"Research\"",
	    "(.*) - Discord": "🥺👉👈  DiscOwOrd"
	},
	"seperate-outputs": true
    },
    "custom/updates":{
        "format": "{} Update(s)",
        "exec": "checkupdates | wc -l",
        "exec-if": "[[ $(checkupdates | wc -l) != 0 ]]",
        "interval": 15,
        "on-click": "alacritty -e paru -Syu && notify-send 'The system has been updated' "
    },
    "custom/wallpaper":{
        "format":" ",
        "on-click": "bash ~/.config/system_scripts/pkill_bc"
    }
}
