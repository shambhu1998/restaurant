FROM python:3.7

MAINTAINER Shambhu

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /restaurant
WORKDIR /restaurant
COPY ./restaurant /restaurant

RUN useradd -rm -d /restaurant -s /bin/bash -g root -G sudo -u 1000 user
USER user
