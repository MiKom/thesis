
MAINDOC := thesis

TEXSRC := $(foreach dir, $(wildcard ./chapters/*), $(wildcard $(dir)/*.tex))
BIBSRC := $(wildcard ./*.bib)

$(MAINDOC).pdf: bibliography $(TEXSRC)
	pdflatex $(MAINDOC).tex

bibliography: $(BIBSRC)

thesis.bbl thesis.blg: 
	biber thesis
