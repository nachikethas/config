# You want latexmk to *always* run, because make does not have all the
# info. Also, include non-file targets in .PHONY so they are run regardless
# of any file of the given name existing.

.PHONY: main all clean

# The first rule in a Makefile is the one executed by default ("make").
# It should always be the "all" rule, so that "make" and "make all" are
# identical.

all: main

# MAIN LATEXMK RULE

# -use-make tells latexmk to call make for generating missing files.
# -interaction=nonstopmode keeps the pdflatex backend from stopping at a
# missing file reference and interactively asking you for an
# alternative.

main: main.tex
	latexmk -use-make main.tex

clean:
	latexmk -C
