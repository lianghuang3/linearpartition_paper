main:
	rm -rf *.aux *.out *.blg *.bbl *.log *.fls *.fdb_latexmk *~
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

split:
	yes | gs -dBATCH -sOutputFile="paper.pdf" -dFirstPage=1 -dLastPage=12 -sDEVICE=pdfwrite main.pdf 
	yes | gs -dBATCH -sOutputFile="si.pdf" -dFirstPage=13 -sDEVICE=pdfwrite main.pdf 

clean:
	rm -rf *.aux *.out *.blg *.bbl *.log *.fls *.fdb_latexmk *~ 

fast:
	pdflatex main
