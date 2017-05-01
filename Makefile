thaienum.pdf: thaienum.tex
	latexmk -pdf -interaction=nonstopmode thaienum.tex
	latexmk -c
thaienum.tex: thaienum.pre.tex
	swath -f latex -u u,u < thaienum.pre.tex > thaienum.tex
clean:
	rm -f thaienum.tex thaienum.pdf
