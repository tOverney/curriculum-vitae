# Curriculum Vitae # [![Build Status](https://travis-ci.org/paullepoulpe/curriculum-vitae.svg?branch=master)](https://travis-ci.org/paullepoulpe/curriculum-vitae)

## You need ##
* the Fontin font (available [here](http://www.exljbris.com/fontin.html))
* xelatex
* layaureo.sty (found in the texlive italian package)

## To build ##

```
make
```

If you want to use tup, you can also do
```
tup init
tup
```
Then you will find the generated file in the `build` folder.

__Remark :__ if you use tup after having built with make once, you will have to run
`make clean` first
