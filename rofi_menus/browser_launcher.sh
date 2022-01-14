choice=$(rofi -dmenu -i -p 'Search String:')
if [[ -n "$choice" ]]; then $BROWSER "https://www.google.com/search?q=$choice"; fi
