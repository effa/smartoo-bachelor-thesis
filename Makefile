TO_CLEAN=aux log blg bbl bcf bib~ tex~ out toc dvi tfm 514pk 600pk aux snm nav "run.xml"
THESIS_SOURCE=thesis
TEX_ARGS=--shell-escape -interaction batchmode

thesis:
	pdflatex ${TEX_ARGS} ${THESIS_SOURCE}; biber ${THESIS_SOURCE}; pdflatex ${TEX_ARGS} ${THESIS_SOURCE}; pdflatex ${TEX_ARGS} ${THESIS_SOURCE};
	for EXT in $(TO_CLEAN); do \
		echo "Deleting *.$$EXT"; \
		for FILE in *.$$EXT; do \
			rm -f "$$FILE"; \
		done \
	done
