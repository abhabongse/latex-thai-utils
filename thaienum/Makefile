thaienum.pdf: thaienum.post.tex
	latexmk -pdf -interaction=nonstopmode thaienum.post.tex
	latexmk -c
	mv thaienum.post.pdf thaienum.pdf
thaienum.post.tex: thaienum.tex
	swath -f latex -u u,u < thaienum.tex > thaienum.post.tex
clean:
	rm -f thaienum.post.tex thaienum.pdf
