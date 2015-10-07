
# This Dockerfile attempts to install Olena / Scribo from scratch.
# The compilation process works, but the commands listed when calling
# scribo-cli won't work, yet.

FROM ubuntu:14.04

MAINTAINER Arne Neumann <nlpdocker.programming@arne.cl>

# if you need support for more languages than English and German
# add the respective tesseract-ocr-LANGUAGE_ISO_CODE package to this list
RUN apt-get update && \
    apt-get install -y git g++ make \
    libgraphicsmagick++-dev \
    libtiff-dev \
    libgdcm2-dev \
    libtesseract-dev \
    tesseract-ocr-eng \
    tesseract-ocr-deu \
    tesseract-ocr-osd \
    automake \
    doxygen \
    imagemagick \
    texlive-full

RUN apt-get install -y \
    hevea \
    latex2html \
    python-docutils \
    bibtex2html

WORKDIR /opt
RUN git clone git://git.lrde.epita.fr/olena

WORKDIR /opt/olena

RUN ./bootstrap
RUN mkdir /opt/olena/_build

WORKDIR /opt/olena/_build

RUN apt-get install -y swig
RUN apt-get install -y python-dev
RUN apt-get install -y graphviz

RUN ../configure --enable-scribo --enable-swilena --enable-tools \
    --enable-apps && make && make install

