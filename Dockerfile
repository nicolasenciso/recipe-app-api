FROM python:3.7-alpine
LABEL MAINTAINER NicolasR

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./.flake8 /app
COPY ./app /app

RUN adduser -D user
USER user