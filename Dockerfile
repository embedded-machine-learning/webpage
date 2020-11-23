FROM ubuntu:16.04

# Install packages
RUN apt-get update -y
RUN apt install -y bibtex2html
RUN rm -rf /var/lib/apt/lists/*
CMD bash
