#!/usr/bin/env bash
pdf2ps "$1.pdf"
psbook -s 16 "$1.ps" | psnup -pa4 -2 > "$1_book.ps"
ps2pdf "$1_book.ps"
