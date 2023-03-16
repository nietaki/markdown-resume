# This file is here to remind me never to use Make for anything more than trivial
# It doesn't handle names with spaces, which makes even this setup futile


# Uncomment lines below if you have problems with $PATH
SHELL := /bin/bash
#PATH := /usr/local/bin:$(PATH)


export DATETIME=$(shell date +"%Y%m%d-%H%M-%S")

SRCDIR=src
OBJDIR=output
SOURCES  := $(wildcard $(SRCDIR)/*.md)
SORUCES_IN_OUTPUT_DIR := $(patsubst $(SRCDIR)/%,$(OBJDIR)/%,$(SOURCES))
PDFS := $(SORUCES_IN_OUTPUT_DIR:.md=.pdf)
HTMLS := $(SORUCES_IN_OUTPUT_DIR:.md=.html)

all: pdf html

.PHONY: pdf
pdf: $(PDFS)

.PHONY: html
html: $(HTMLS)

$(OBJDIR)/%.pdf: $(SRCDIR)/%.md
	./compile.sh $< pdf

$(OBJDIR)/%.html: $(SRCDIR)/%.md
	./compile.sh $< html

.PHONY: debug
debug:
	$(foreach v, $(.VARIABLES), $(if $(filter file,$(origin $(v))), $(info $(v)=$($(v)))))

.PHONY: clean
clean:
	rm -f "$OBJDIR/*.html"
	rm -f "$OBJDIR/*.pdf"
