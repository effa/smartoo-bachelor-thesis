SHELL=/bin/bash
NAME=presentation

.PHONY: presentation, view, clean

presentation: ${NAME}.pdf

view: ${NAME}.pdf
	evince ${NAME}.pdf

clean:
	-rm ${NAME}.pdf

${NAME}.pdf: ${NAME}.tex
	pdflatex --shell-escape ${NAME}.tex
	-rm ${NAME}.{aux,log,nav,out,snm,toc}

