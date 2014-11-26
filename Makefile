all: open

.PHONY: clean open

build:
	mkdir build

clean:
	rm -rf build/*

open: build/cv.pdf
	acroread build/cv.pdf

build/cv.pdf: cv.tex build
	# Do it twice for the cadre
	xelatex -output-directory build/ cv.tex
	xelatex -output-directory build/ cv.tex
