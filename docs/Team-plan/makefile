.PHONY: clean watch

# PDFS=$(shell find . -name "*.tex" | sed s/.tex/.pdf/)
PDFS=build/main.pdf

all: $(PDFS)

build/%.pdf: %.tex bibliography.bib
	mkdir -p build
	xelatex -output-directory=build $*.tex
	bibtex8 build/main.aux

clean:
	rm -r build

watch:
	find . -name "*.tex" | entr -r make
