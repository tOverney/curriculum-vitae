#!/usr/bin/env sh

set -x

mkdir ~/.fonts

# Fontin font
wget http://www.exljbris.com/dl/fontin_pc.zip
unzip fontin_pc.zip -d ~/.fonts

# Font awesome
wget http://mirrors.ctan.org/fonts/fontawesome/FontAwesome.otf
mv FontAwesome.otf ~/.fonts
