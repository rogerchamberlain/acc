PDFLATEX=pdflatex

default: paper.pdf

paper.pdf: paper.tex paper.bib abstract.tex intro.tex history.tex machines.tex apps.tex dev.tex conclude.tex
	$(PDFLATEX) paper
	-bibtex paper
	$(PDFLATEX) paper
	$(PDFLATEX) paper

clean:
	/bin/rm -f *.aux *.log *.dvi *.bbl *.blg

veryclean: clean
	/bin/rm -f *.pdf
