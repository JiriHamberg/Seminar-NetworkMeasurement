OUT=build
IN=paper.tex
PRESENTATION=presentation.tex

all:
	pdflatex --output-directory $(OUT) $(IN)
	bibtex $(OUT)/*.aux
	pdflatex --output-directory $(OUT) $(IN)
	pdflatex --output-directory $(OUT) $(IN)  

presentation:
	pdflatex --output-directory $(OUT) $(PRESENTATION)
	pdflatex --output-directory $(OUT) $(PRESENTATION)
clean:
	rm $(OUT)/*
