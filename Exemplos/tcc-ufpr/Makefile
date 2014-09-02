FILE = tcc
TEX = pdflatex
TEX_OPT = -shell-escape -interaction=batchmode -file-line-error
BTEX = bibtex
IDEX = makeindex

all: $(FILE).pdf

$(FILE).pdf: clean-all $(FILE).tex
	$(TEX) $(TEX_OPT) $(FILE).tex
	$(BTEX) $(FILE)
	$(IDEX) $(FILE)
	$(TEX) $(TEX_OPT) $(FILE).tex
	$(TEX) $(TEX_OPT) $(FILE).tex

clean:
	$(RM) $(FILE).log $(FILE).aux $(FILE).out $(FILE).idx $(FILE).lof $(FILE).lot $(FILE).toc $(FILE).bbl $(FILE).blg $(FILE).brf $(FILE).out.ps $(FILE).ilg $(FILE).ind

clean-all: clean
	$(RM) $(FILE).pdf $(FILE).dvi
