#!/bin/sh

baseDir=/data
# baseDir=./

cd $baseDir/_data

echo " "
echo "Making the WorkProgress.csv table ..."

xlsx2csv -i -n 'AG_Web_Activities' CDLEML_WP_Progress_EML-Process.xlsx WorkProgress.csv

echo " "
echo "Making the list of Theses in Theses.csv ..."

xlsx2csv -i -n 'Compl_Thesis' CDLEML_WP_Progress_EML-Process.xlsx Theses.csv


echo " "
echo "Making the list of Software packages Software.csv ..."

xlsx2csv -i -n 'Software' CDLEML_WP_Progress_EML-Process.xlsx Software.csv

echo " "
echo "Making the list of Open Theses OpenTheses.csv ..."

xlsx2csv -i -n 'OpenTheses' CDLEML_WP_Progress_EML-Process.xlsx OpenTheses.csv
