.PHONY: all clean cleanall
pdf = thaienum.pdf
post_pdf = thaienum.post.pdf
tex = thaienum.tex
post_tex = thaienum.post.tex
sty = thaienum.sty

all: $(pdf)

$(pdf): $(post_tex) $(sty)
	latexmk -pdf -interaction=nonstopmode $(post_tex)
	latexmk -c
	mv $(post_pdf) $(pdf)

$(post_tex): $(tex)
	swath -f latex -u u,u < $(tex) > $(post_tex)

clean:
	latexmk -c
	rm -f $(post_tex)

cleanall: clean
	rm -f $(pdf)
