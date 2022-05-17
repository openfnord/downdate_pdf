#!/bin/bash
#Reduce pdf version in order to use old Acrobat7 for OCR and Image-Size-Reduction 
#(Acrobat 7.0: Menue: "File, reduce-file-size" -> compatibility with 4.0).
#Acrobat 7.0 was given away for free by adobe, and you may find it in some archives of the internet
#You can use Acrobat 7.0 perfectly with wine in linux.

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE   -dBATCH -sOutputFile=$2  $1

#Also you can use this to fight some issues with crashing pdf tools.
#usage: downdate_pdf.sh inputfile.pdf outputfile.pdf
