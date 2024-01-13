# wb-razer_battery
Waybar plugin for Razer wireless keyboard to show its battery status. Plugin also indicating when keyboard is charging.

+ copy script file **razer_battery.sh** to waybar script directory ussualy **./config/waybar/scripts**
+ add next settings to the waybar config file

        "custom/razer-battery": {
            "format": "󰌌 {percentage}% {icon}",
            "format-icons": ["󰁺","󰁻","󰁼","󰁽","󰁾","󰁿","󰂀","󰂁","󰂂","󰁹"],
            "exec": "~/.config/waybar/scripts/razer_battery.sh",
            "return-type": "json",
            "tooltip": false,
            "interval": 60
        },

+ please note that script is written for fish shell and depends from the **razer-cli** package. Please follow instructions described here - (https://github.com/lolei/razer-cli) to install **razer-cli**.
