echo "Wallpaper: "
read WALLPAPER_SRC
# Pipe Directory into ~/.config/hyprpaper.conf
if ! [[ -f "$WALLPAPER_SRC" ]]; then
    echo "File does not exist"
    exit
fi
WALLPAPER_SRC=$(echo "$WALLPAPER_SRC" | tr -d '"' | tr -d "'")
sed -i "s|path = .*|path = $WALLPAPER_SRC|" ~/.config/hypr/hyprpaper.conf
killall hyprpaper
wait
nohup hyprpaper &
matugen image $WALLPAPER_SRC
sleep .2