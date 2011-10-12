all : angular_multigrid.tex \
	biblio.bib
	pdflatex angular_multigrid.tex
	-bibtex angular_multigrid
	pdflatex angular_multigrid.tex
	pdflatex angular_multigrid.tex

.PHONY : clean

clean :
	-rm *.log *.aux *.bbl *.blg
	-rm angular_multigrid.pdf
