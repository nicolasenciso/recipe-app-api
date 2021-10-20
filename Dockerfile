FROM python:3.7-alpine
LABEL MAINTAINER NicolasR

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY . .


RUN adduser -D user
USER user