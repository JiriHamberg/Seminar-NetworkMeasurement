OUT=build
IN=paper.tex

all:
	pdflatex --output-directory $(OUT) $(IN)
	bibtex $(OUT)/*.aux
	pdflatex --output-directory $(OUT) $(IN)
	pdflatex --output-directory $(OUT) $(IN)  

clean:
	rm $(OUT)/*
