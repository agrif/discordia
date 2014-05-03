.PHONY : all clean

all : principia.pdf

clean :
	rm -f *.aux principia.{idx,pdf,log,toc,ilg,ind}

principia.pdf : *.tex style.sty
	pdflatex principia
	makeindex principia
	pdflatex principia
