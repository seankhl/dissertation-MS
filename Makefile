
MAIN=ms

all: $(MAIN).pdf

ms.pdf: ms.tex $(SOURCES) $(FIGURES)
	latexmk -f -pdf --quiet $(MAIN).tex || true
	rubber-info ms.log
	sh .script/latexmv

clean:
	rm $(MAIN).pdf
	rm ./.aux/$(MAIN)*

.PHONY: all clean
