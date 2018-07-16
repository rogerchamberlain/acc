PDFLATEX=pdflatex

default:
	$(PDFLATEX) paper
	-bibtex paper
	$(PDFLATEX) paper
	$(PDFLATEX) paper

clean:
	/bin/rm -f *.aux *.log *.dvi *.bbl *.blg

veryclean: clean
	/bin/rm -f *.pdf
