all: thesis.pdf

open: thesis.pdf
	xdg-open thesis.pdf

# Vyroba PDF primo z DVI by byla prijemnejsi, ale vetsina verzi dvipdfm nici obrazky
# thesis.pdf: thesis.dvi
#	dvipdfm -o $@ -p a4 -r 600 $<

thesis.pdf: thesis.ps
	ps2pdf $< $@

thesis.ps: thesis.dvi
	dvips -o $@ -D600 -t a4 $<

# LaTeX je potreba spustit vicekrat, aby spravne spocital odkazy a vlozil citace
thesis.dvi: thesis.tex $(wildcard *.tex)
	latex $<
	bibtex $*
	latex $<
	latex $<

clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.out
