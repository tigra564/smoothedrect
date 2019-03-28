# smoothedrect
TikZ figure — rectangle with smoothed corners and a number of convenient anchors

## Description

Vanilla rectangle shipped with TikZ package may be drawn with smoothed corners. It takes merely to set something like `[rounded corners = 6pt]` in the rectangle style. However when connecting it to other figures with lines or arrows one may notice that connectors are clipped by the original rectangular background, i.e. without taking into account the fact that the border path is smoothed.

This package introduces a smoothed rectangle for which the background path issue is fixed. Additionally it allows customizing the following parameters:

* corner arc radius (e.g. `/pgf/smoothed rectangle/arc=10pt`)
* number of anchors per each arc half (e.g. `/pgf/smoothed rectangle/corner anchors=2`)
* number of anchors per each side half (e.g. `/pgf/smoothed rectangle/x anchors=3`)

Addtional anchors at the end of each arc are supplied as well. They are named somewhat like `south south west`. See the demo in `smoothedrectdemo.tex`

## Installation
Currently the package is not wrapped in standard LaTeX manner, so you'll probably have to copy `smoothedrect.sty` somewhere to `~/texmf/tex/latex/smoothedrect/`.

Making demo will require running pdflatex or xelatex several times. In order to use Make one should install xelatex and latexmk.


## Usage

Run `make` and then open smoothedrectdemo.pdf in you favourite PDF viewer.