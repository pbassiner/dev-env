#!/bin/bash
if [ ! -d "~/.local/share/fonts/" ]; then
  mkdir ~/.local/share/fonts/
fi

wget -O ~/.local/share/fonts/PowerlineSymbols.otf https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget -O ~/.local/share/fonts/Monoisome-Regular.ttf https://github.com/larsenwork/monoid/raw/master/Monoisome/Monoisome-Regular.ttf
fc-cache -vf ~/.local/share/fonts/

if [ ! -d "~/.config/fontconfig/conf.d/" ]; then
  mkdir -p ~/.config/fontconfig/conf.d/
fi
wget -O ~/.config/fontconfig/conf.d/10-powerline-symbols.conf https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
