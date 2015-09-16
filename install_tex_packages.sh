#!/usr/bin/env sh

set -x // Echo commands
set -e // Exit on error

# Font Awesome
wget http://mirrors.ctan.org/fonts/fontawesome/tex/fontawesome.sty
wget http://mirrors.ctan.org/fonts/fontawesome/tex/fontawesomesymbols-generic.tex
wget http://mirrors.ctan.org/fonts/fontawesome/tex/fontawesomesymbols-xeluatex.tex

# Layaureo
wget http://mirrors.ctan.org/macros/latex/contrib/layaureo.zip
unzip layaureo.zip
cd layaureo/SourceFiles
latex layaureo.ins
mv layaureo.sty ../..
cd ../..

