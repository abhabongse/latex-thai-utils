.PHONY: all clean cleanall
pdf = thaifont-setup.pdf
post_pdf = thaifont-setup.post.pdf
tex = thaifont-setup.tex
post_tex = thaifont-setup.post.tex
sty = thaifont-setup.sty

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
