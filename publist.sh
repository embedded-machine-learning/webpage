#!/bin/sh

baseDir=/data
#baseDir=./

# Publication lists:
# All entries:
bibsrc=$baseDir/PublFiles/eml.bib
bibArticles=$baseDir/PublFiles/emlArticles.bib
bibConferences=$baseDir/PublFiles/emlConferences.bib
bibPresentations=$baseDir/PublFiles/emlPresentations.bib


# Publication list targets in html format:
htmlArticles=$baseDir/_includes/publistArticles.html
htmlConferences=$baseDir/_includes/publistConferences.html
htmlPresentations=$baseDir/_includes/publistPresentations.html


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

###########################
#
# Generating seperate bib files for journals, conferences and presentations:
#
##########################

bib2bib -q -c '$type = "article"' $bibsrc > $bibArticles 
bib2bib -q -c '$type = "inproceedings"' $bibsrc > $bibConferences 
bib2bib -q -c '$type = "misc" and $key : "presentation"' $bibsrc > $bibPresentations 

bibtex2html -q --no-abstract --sort-by-date --reverse-sort -nodoc -nokeywords -nofooter -o - $bibArticles \
    | sed -e 's/<p>//' > $htmlArticles
bibtex2html -q --no-abstract --sort-by-date --reverse-sort -nodoc -nokeywords -nofooter -o - $bibConferences \
    | sed -e 's/<p>//' > $htmlConferences
bibtex2html -q --no-abstract --sort-by-date --reverse-sort -nodoc -nokeywords -nofooter -o - $bibPresentations \
    | sed -e 's/<p>//' > $htmlPresentations
      # bib2bib generates spurious and incorrect <p>  tags when there is an abstract in the bib entry,
      # which we filter out here.

echo "The publication lists are in $htmlArticles $htmlConferences $htmlPresentations."
