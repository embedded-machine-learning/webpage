#!/bin/sh

baseDir=${PWD}

# Publication list:
bibsrc=$baseDir/PublFiles/eml.bib
htmlpublist=$baseDir/_includes/publist.html

# Building the publication list from the file lit.bib
# It takes those entries with key={eml}

cd $baseDir

echo " "
echo "Making the publication list ..."

if [ ! -r $bibsrc ]
then echo "File $bibrsc not found."
     exit 2;
fi

if [ ! -x `which bib2bib` ]
then
    echo "Programm bib2bib not found. Probably you should install it."
    echo "Try sudo apt install bibtex2html"
    exit 2;
fi

# bib2bib -q -c 'key : "eml"' $bibsrc | bibtex2html -q -nodoc -nokeywords -nofooter  \
#     | sed -e 's/<p>//' > $htmlpublist
      # bib2bib generates spurious and incorrect <p>  tags when there is an abstract in the bib entry,
      # which we filter out here.

bibtex2html -q -nodoc -nokeywords -nofooter -o - $bibsrc  \
    | sed -e 's/<p>//' > $htmlpublist
      # bib2bib generates spurious and incorrect <p>  tags when there is an abstract in the bib entry,
      # which we filter out here.

echo "The publication list is in $htmlpublist."
