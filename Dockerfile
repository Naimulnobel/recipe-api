FROM python:3.7-alpine
MAINTAINER Nobel

ENV PYTHONUNBUFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
