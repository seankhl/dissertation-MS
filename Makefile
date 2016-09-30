
MAIN=ms
SOURCES=$(shell find Chapters -type f -name "*.tex")
FIGURES=$(shell find Graphs -type f -name "*.png")

all: $(MAIN).pdf

ms.pdf: ms.tex ms.bib $(SOURCES) $(FIGURES)
	latexmk -f -pdf --quiet $(MAIN).tex || true
	rubber-info ms.log
	sh .script/latexmv

clean:
	rm $(MAIN).pdf
	rm ./.aux/$(MAIN)*

.PHONY: all clean
