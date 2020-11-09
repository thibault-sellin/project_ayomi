FROM python:3.7

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

WORKDIR /django_app

RUN pip install django
RUN pip install psycopg2

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh