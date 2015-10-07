
# Olena ppa packages are only provided for this Ubuntu version
FROM ubuntu:12.04

MAINTAINER Arne Neumann <nlpdocker.programming@arne.cl>

RUN apt-get update && apt-get install -y python-software-properties

RUN add-apt-repository ppa:olena/ppa && \
    apt-get update && \
    apt-get install -y olena

