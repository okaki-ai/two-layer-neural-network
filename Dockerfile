FROM python:3.7-slim

RUN apt-get update && \
    apt-get upgrade -y &&\
    apt-get install -y \
    python3-pip

ADD . .
RUN pip3 install --upgrade pip setuptools
RUN pip3 install -r ./requirements.txt

