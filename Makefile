# Test makefile for building latex guide
BASE_NAME = airhockey
TEXSOURCE = $(BASE_NAME).tex
OUTPUT = $(BASE_NAME).pdf
BIBSOURCE = biblio-airhockey

pdf:
	pdflatex $(TEXSOURCE) && pdflatex $(TEXSOURCE) 

pdfquiet:
	pdflatex $(TEXSOURCE) && pdflatex $(TEXSOURCE)

bib:
	pdflatex $(TEXSOURCE) && pdflatex $(TEXSOURCE) && bibtex $(BASE_NAME) && pdflatex $(TEXSOURCE)

todo:
	grep -i -n --colour todo *.tex 

clean:
	rm -rf *.bbl *.aux *.blg *.log *.toc

show:
	evince $(OUTPUT)
