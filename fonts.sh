#!/bin/bash
if [ ! -d "~/.local/share/fonts/" ]; then
  mkdir ~/.local/share/fonts/
fi

wget -O ~/.local/share/fonts/PowerlineSymbols.otf https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget -O ~/.local/share/fonts/fontawesome-regular.ttf https://github.com/gabrielelana/awesome-terminal-fonts/raw/master/build/fontawesome-regular.ttf
wget -O ~/.local/share/fonts/fontawesome-regular.sh https://github.com/gabrielelana/awesome-terminal-fonts/raw/master/build/fontawesome-regular.sh
wget -O ~/.local/share/fonts/devicons-regular.ttf https://github.com/gabrielelana/awesome-terminal-fonts/raw/master/build/devicons-regular.ttf
wget -O ~/.local/share/fonts/devicons-regular.sh https://github.com/gabrielelana/awesome-terminal-fonts/raw/master/build/devicons-regular.sh
wget -O ~/.local/share/fonts/octicons-regular.ttf https://github.com/gabrielelana/awesome-terminal-fonts/raw/master/build/octicons-regular.ttf
wget -O ~/.local/share/fonts/octicons-regular.sh https://github.com/gabrielelana/awesome-terminal-fonts/raw/master/build/octicons-regular.sh

fc-cache -vf ~/.local/share/fonts/

if [ ! -d "~/.config/fontconfig/conf.d/" ]; then
  mkdir -p ~/.config/fontconfig/conf.d/
fi
