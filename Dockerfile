
# Olena ppa packages are only provided for this Ubuntu version
FROM ubuntu:12.04

MAINTAINER Arne Neumann <nlpdocker.programming@arne.cl>

RUN apt-get update && apt-get install -y python-software-properties

# if you need support for more languages than English and German
# add the respective tesseract-ocr-LANGUAGE_ISO_CODE package to this list
RUN add-apt-repository ppa:olena/ppa && \
    apt-get update && \
    apt-get install -y olena \
    libtesseract-dev \
    tesseract-ocr-eng \
    tesseract-ocr-deu \
    tesseract-ocr-osd

