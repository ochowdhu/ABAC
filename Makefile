input=paper

all:
	latex $(input)
	-bibtex $(input)
	latex $(input)
	latex $(input)
	dvips -Ppdf  -o $(input).ps $(input).dvi
	ps2pdf  $(input).ps


clean:
	rm -f *.ps *.aux *.lof *.lot *.out *.log *.dvi *.bbl *.toc *.blg  *~ 
