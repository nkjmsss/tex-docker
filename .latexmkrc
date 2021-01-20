#!/usr/bin/env perl
$latex            = 'uplatex -file-line-error -interaction=nonstopmode -halt-on-error %O %S';
$out_dir          = 'dist';
$bibtex           = 'upbibtex %O %B';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'upmendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode     = 3; # generates pdf via dvipdfmx

# Prevent latexmk from removing PDF after typeset.
$pvc_view_file_via_temporary = 0;
$pdf_previewer    = "ls";       # because we use latexmk in a docker container

ensure_path( 'TEXINPUTS', './cls//' );
