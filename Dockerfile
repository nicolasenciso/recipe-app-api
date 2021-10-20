FROM python:3.7-alpine
LABEL MAINTAINER NicolasR

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
COPY .flake8 /app
WORKDIR /app
COPY ./app /app


RUN adduser -D user
USER user