echo "Wallpaper: "
read WALLPAPER_DIR
# Pipe Directory into ~/.config/hyprpaper.conf
if [[ -f "$FILE" ]]; then
    echo "File does not exist"
    exit
fi
WALLPAPER_DIR=$(echo "$WALLPAPER_DIR" | tr -d '"' | tr -d "'")
sed -i "s|path = .*|path = $WALLPAPER_DIR|" ~/.config/hypr/hyprpaper.conf
killall hyprpaper
wait
nohup hyprpaper &
sleep 0.2