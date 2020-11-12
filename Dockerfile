FROM python:3.7-alpine
LABEL maintainer="Evantha"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
COPY ./app /app
WORKDIR /app

# RUN adduser -D user
# RUN chown user -R /app
# USER user