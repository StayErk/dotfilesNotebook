#!/bin/bash
path=$(pwd)
var=$1
var2=${var%.md}
var3=${var2%/*}
note=Note
pandoc -o $var2.pdf $var --template eisvogel --listings

if [ -z "${path##*$note*}" ]; then
  mv $var2.pdf /home/andrea/Documenti/ExportedPDF/Note/
  #echo ${var2%/*}
  #echo "Note"
else
  cp $var2.pdf /home/andrea/Documenti/ExportedPDF/Esportati/
  #echo "Non note"
fi

