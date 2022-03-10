# Christian Doppler Laboratory for Embedded Machine Learning Webpage

## ./github/workflows/docker-image.yml
Is called every push and every day at 01:00 UTC.
It builds a docker container. 

It will call the publist.sh, mkWorkProgresscsv.sh and the time.py.

publist.sh will make the PublFiles/eml.bib and convert it in a usable way.

mkWorkProgresscsv.sh will convert the _data/CDLEML_WP_Progress_EML-Process.xlsx into usable csv files.

time.py will update pages/research/opentheses.md with the current time so that old opentheses will not be displayed.

# _data/CDLEML_WP_Progress_EML-Process.xlsx

Is more or less the masterfile. It creates the csv files for Opentheses, Software, Theses (Completed) and WorkProgress.

## Update Opentheses
To update opentheses you have to update the _data/CDLEML_WP_Progress_EML-Process.xlsx file. There you find the open theses table.

Opentheses uses the time.py so the old published opentheses are not displayed.
time.py is called by the ./github/workflows/docker-image.yml which is called every push and with a cron job every day at 01:00 UTC.


## Create Posts in the "_posts" folder as you wish
- subfolders are for categorization
- you can find layouts in the _draft folder
- https://phlow.github.io/feeling-responsive/ shows you how the templates look like

## To update the publications
just edit the PublFiles/eml.bib file, the building pipeline takes care of the rest but takes about 2 minutes or so




## Update Menu
Update the _data/navigation.yml


