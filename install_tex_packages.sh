#!/usr/env/bash

# Font Awesome
wget http://www.pirbot.com/mirrors/ctan/fonts/fontawesome/fontawesome.sty

# Layaureo
wget http://mirrors.ctan.org/macros/latex/contrib/layaureo.zip
unzip layaureo.zip
cd layaureo/SourceFiles
latex layaureo.ins
mv layaureo.sty ../..
cd ../..

