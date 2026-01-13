####################
###  Wallpapers  ###
####################
mkdir -p ~/.tmp && cd ~/.tmp
git clone https://github.com/dusklinux/images
cd images
mkdir -p ~/Photos/Wallpapers
mv ./* ~/Photos/Wallpapers
clear
echo <<EOF
  _   _      _____         _     
 | | | |_   |_   _|__  ___| |__  
 | |_| | | | || |/ _ \/ __| '_ \ 
 |  _  | |_| || |  __/ (__| | | |
 |_| |_|\__, ||_|\___|\___|_| |_|
        |___/                    
EOF
