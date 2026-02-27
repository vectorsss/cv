all: cv.pdf cv_cn.pdf cv_ru.pdf

cv.pdf: cv.tex
	pdflatex cv.tex

cv_cn.pdf: cv_cn.tex
	xelatex cv_cn.tex

cv_ru.pdf: cv_ru.tex
	xelatex cv_ru.tex

# Clean auxiliary files
clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.nav *.snm *.vrb *.fls *.fdb_latexmk *.synctex.gz

# Clean everything including PDFs
cleanall: clean
	rm -f *.pdf

cv: cv.pdf

cn: cv_cn.pdf

ru: cv_ru.pdf

.PHONY: all clean cleanall cv cn ru
