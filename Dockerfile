FROM ubuntu:18.04

# Install packages
RUN apt-get update -y
RUN apt install -y bibtex2html python3-pip
RUN pip3 install xlsx2csv
RUN rm -rf /var/lib/apt/lists/*
ADD . /data
RUN sh /data/publist.sh
CMD bash
