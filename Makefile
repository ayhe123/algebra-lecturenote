src=$(wildcard ./*.tex)
pdf=$(patsubst %.tex, %.pdf, $(src))

build: $(pdf)

%.pdf: %.tex
	xelatex -synctex=1 -interaction=batchmode $<
	xelatex -synctex=1 -interaction=batchmode $<

.PHONY:	clean clean_pdf

clean_pdf:
	rm *.pdf

clean:
	rm __latexindent_temp.tex *.aux *.bbl *.blg *.log *.out *.toc *.bcf *.xml *.synctex *.nlo *.nls *.bak *.ind *.idx *.ilg *.lof *.lot *.ent-x *.tmp *.ltx *.los *.lol *.loc *.listing *.gz *.userbak *.nav *.snm *.vrb *.synctex\(busy\) *.nav *.snm *.vrb *.fls *.xdv *.fdb_latexmk
