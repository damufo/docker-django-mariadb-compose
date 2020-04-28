FROM python:3.8

ENV PYTHONUNBUFFERED 1

RUN mkdir /requirements
WORKDIR /requirements
COPY requirements.txt /requirements/
RUN pip install -r requirements.txt

RUN mkdir /code
WORKDIR /code
