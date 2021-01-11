#!/bin/sh

baseDir=/data
# baseDir=./

cd $baseDir/_data

echo " "
echo "Making the WorkProgress.csv table ..."

xlsx2csv -i -n 'Autogenerate_Work_Progress' CDLEML_WP_Progress_EML-Process.xlsx WorkProgress.csv
