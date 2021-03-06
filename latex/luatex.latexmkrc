# See https://www.ctan.org/tex-archive/support/latexmk/example_rcfiles
# for more example_rcfiles.
#
# This shows how to use lualatex (http://en.wikipedia.org/wiki/LuaTeX)
# with latexmk.  Lualatex uses Unicode and "supporting modern font
# technologies such as OpenType or Apple Advanced Typography.
#
# Since lualatex only produces pdf files, it is a replacement for
# pdflatex.  To make it your default typesetting engine within latexmk
# you will not only need to set the $pdflatex variable to require the
# use of lualatex, but also to turn on production of pdf files and to
# turn off the production of dvi and ps files, as in the following
# code:

$pdflatex = 'lualatex %O %S';
$pdf_mode = 1;
$postscript_mode = $dvi_mode = 0;
$bibtex_use = 2;
