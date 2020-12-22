SHELL=/bin/bash
BUILDDIR=.build

all: book

prepare: 
	mkdir -p $(BUILDDIR)

pdf: prepare
	pdflatex --output-directory $(BUILDDIR) main.tex

book: pdf
	pdf2ps "$(BUILDDIR)/main.pdf" "$(BUILDDIR)/main.ps"
	psbook -s 16 "$(BUILDDIR)/main.ps" | psnup -2 > "$(BUILDDIR)/main_book.ps"
	ps2pdf "$(BUILDDIR)/main_book.ps" "$(BUILDDIR)/shepot.pdf"

clean:
	rm -r $(BUILDDIR)				
