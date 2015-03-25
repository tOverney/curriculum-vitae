all: open

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S), Darwin)
	OPEN := open
else ifeq ($(UNAME_S), Linux)
	OPEN := xdg-open
else
	OPEN := acroread
endif
.PHONY: clean open

build:
	mkdir build

clean:
	rm -rf build/cv.*

open: build/cv.pdf
	$(OPEN) build/cv.pdf

build/cv.pdf: cv.tex build
	# Do it twice for the cadre
	xelatex -output-directory build/ cv.tex
	xelatex -output-directory build/ cv.tex
