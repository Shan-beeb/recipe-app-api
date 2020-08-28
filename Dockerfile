FROM python:3.8
MAINTAINER Shan App Developer

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN useradd -m -s /bin/bash -G sudo newuser
USER newuser