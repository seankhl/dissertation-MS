
MAIN=ms

all: $(MAIN).pdf

ms.pdf: ms.tex $(SOURCES) $(FIGURES)
	latexmk -f -pdf $(MAIN).tex || true
	sh .script/latexmv

clean:
	rm $(MAIN).pdf
	rm ./.aux/$(MAIN)*

.PHONY: all clean
