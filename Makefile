SHELL=/bin/bash
BUILDDIR=.build

all: prepare makepdf makebook

prepare: 
	mkdir -p $(BUILDDIR)

makepdf:
	pdflatex --output-directory $(BUILDDIR) main.tex

makebook:
	pdf2ps "$(BUILDDIR)/main.pdf" "$(BUILDDIR)/main.ps"
	psbook -s 16 "$(BUILDDIR)/main.ps" | psnup -pa4 -2 > "$(BUILDDIR)/main_book.ps"
	ps2pdf "$(BUILDDIR)/main_book.ps" "$(BUILDDIR)/shepot.pdf"

clean:
	rm -r $(BUILDDIR)				
