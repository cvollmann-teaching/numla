#!/bin/bash
# get parsed args
[[ -z "$1" ]] && { echo "Parameter target-directory is empty" ; exit 1; }
[[ -z "$2" ]] && { echo "Parameter filename is empty" ; exit 1; }
[[ -z "$3" ]] && { echo "Parameter lecture-tag is empty" ; exit 1; }
#
elomathfalse="\togglefalse{elomath}" 
elomathtrue="\toggletrue{elomath}"
printfalse="\togglefalse{printver}" 
printtrue="\toggletrue{printver}"
picturesfalse="\togglefalse{pictures}" 
picturestrue="\toggletrue{pictures}"
inclass="\newcommand{\blank}{\color{bgcolor}}\newcommand{\Hide}{\adjustbox{varwidth=\linewidth,precode=\phantom}}"
handout="\newcommand{\blank}{\color{fontcolor}}\newcommand{\Hide}[1]{#1}"
notes="\newcommand{\blank}{\color{magenta}}\newcommand{\Hide}[1]{{\color{magenta}#1}}"
#
target_dir=$1
filename=$2
includedlecture=$3
mkdir --parents build
#------------------------------------------------------------------------------------------------------------------------#
### NOTES
echo "$elomathtrue $notes $picturestrue $printfalse" > ./macros/toggles.tex
echo "\includeonlylecture{$includedlecture}" > ./macros/includedlecture.tex
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build/ main.beamer.tex
mv ./build/main.beamer.pdf $target_dir/$filename-notes.pdf
#--------- GENERATE .bbl BIBTEX FILE FROM .aux ----------------#
bibtex main.beamer.aux
#------------------------------------------------------------------------------------------------------------------------#
### PRINT VERSION: inclass and handout
echo "$elomathtrue $inclass $picturesfalse $printtrue" > ./macros/toggles.tex
echo "\includeonlylecture{basics,la,sollinsys,eigvals,svd,iterative,leastsquares,vectorspaces,nonlinear}" > ./macros/includedlecture.tex
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build/ main.beamer.tex
echo "\includeonlylecture{$includedlecture}" > ./macros/includedlecture.tex
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build/ main.beamer.tex
mv ./build/main.beamer.pdf $target_dir/$filename-inclass-print.pdf
#
echo "$elomathtrue $handout $picturestrue $printtrue" > ./macros/toggles.tex
echo "\includeonlylecture{basics,la,sollinsys,eigvals,svd,iterative,leastsquares,vectorspaces,nonlinear}" > ./macros/includedlecture.tex
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build/ main.beamer.tex
echo "\includeonlylecture{$includedlecture}" > ./macros/includedlecture.tex
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build/ main.beamer.tex
mv ./build/main.beamer.pdf $target_dir/$filename-handout-print.pdf
#------------------------------------------------------------------------------------------------------------------------#
### PRESENTATION VERSION: inclass and handout
echo "$elomathtrue $inclass $picturesfalse $printfalse" > ./macros/toggles.tex
echo "\includeonlylecture{basics,la,sollinsys,eigvals,svd,iterative,leastsquares,vectorspaces,nonlinear}" > ./macros/includedlecture.tex
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build/ main.beamer.tex
echo "\includeonlylecture{$includedlecture}" > ./macros/includedlecture.tex
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build/ main.beamer.tex
mv ./build/main.beamer.pdf $target_dir/$filename-inclass.pdf
#
echo "$elomathtrue $handout $picturestrue $printfalse" > ./macros/toggles.tex
echo "\includeonlylecture{basics,la,sollinsys,eigvals,svd,iterative,leastsquares,vectorspaces,nonlinear}" > ./macros/includedlecture.tex
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build/ main.beamer.tex
echo "\includeonlylecture{$includedlecture}" > ./macros/includedlecture.tex
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build/ main.beamer.tex
mv ./build/main.beamer.pdf $target_dir/$filename-handout.pdf

