.PHONY : all clean booklet

all : principia.pdf

booklet : principia-booklet.pdf

clean :
	rm -f *.aux principia.{idx,pdf,log,toc,ilg,ind} principia-booklet.pdf

principia.pdf : *.tex style.sty
	pdflatex principia
	makeindex principia
	pdflatex principia

principia-booklet.pdf : principia.pdf
	pdfbook principia.pdf --papersize '{8.5in,11in}' --suffix 'booklet'
