#!/usr/bin/env perl

$pdf_mode     = 3;
$latex        = 'platex -halt-on-error';
$latex_silent = 'platex -halt-on-error -interaction=batchmode';
$bibtex       = 'pbibtex';
$dvipdf       = 'dvipdfmx %O -o %D %S';
$makeindex    = 'mendex %O -o %D %S';

$pvc_view_file_via_temporary = 0;
if ($^O eq 'linux') {
    $pdf_previewer = "xdg-open %S";
} elsif ($^O eq 'darwin') {
    $pdf_previewer = "open %S";
} else {
    $pdf_previewer = "start %S";
}
