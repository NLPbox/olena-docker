Olena / Scribo
==============

Olena is a generic image processing library written in C++.
Scribo is an optional component of Olena providing Document Image Analysis
tools and routines. This repository allows you to install the software in a
[docker](https://www.docker.com/) container with one simple command.


Installation
============

``docker build -t olena https://github.com/nlpdocker/olena-docker.git``


Usage
=====

```bash
# makes your /tmp directory available in the container
docker run -v /tmp:/tmp -ti olena

# run scribo-cli on a scanned document in German language (input.jpg) and
# return an XML file containing OCR and document layout
docker run -v /tmp:/tmp -ti olena scribo-cli doc-dia --ocr-lang deu /tmp/input.jpg /tmp/output.xml
```
