FILE = main
TEX = pdflatex
TEX_OPT = -shell-escape -interaction=batchmode -file-line-error

all: $(FILE).pdf

$(FILE).pdf: clean-all $(FILE).tex
	$(TEX) $(TEX_OPT) $(FILE).tex
	$(TEX) $(TEX_OPT) $(FILE).tex

clean:
	$(RM) $(FILE).log $(FILE).aux $(FILE).out $(FILE).toc

clean-all: clean
	$(RM) $(FILE).pdf $(FILE).dvi
