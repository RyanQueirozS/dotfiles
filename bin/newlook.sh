wall=$(find $HOME/Wallpapers/ -type f -name "*.jpg" -o -name "*.png" | shuf -n 1)

swaybg -i $wall
