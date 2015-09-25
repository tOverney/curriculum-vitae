#!/usr/bin/env sh

set -x // Echo commands
set -e // Exit on error

mkdir -p ~/.fonts

# Fontin font
wget http://www.exljbris.com/dl/fontin_pc.zip
unzip fontin_pc.zip -d ~/.fonts

# Font awesome
wget http://fontawesome.io/assets/font-awesome-4.4.0.zip -O font-awesome.zip
unzip -j font-awesome.zip */fonts/* -d ~/.fonts
