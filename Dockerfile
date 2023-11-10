FROM python:3.11.0-slim

ENV PYTHONBUFFERED=1
WORKDIR /app/

RUN apt-get update && \
apt-get install -y \
bash \
build-essential \
gcc \
libffi-dev \
musl-dev \
openssl \
postgresql \
libpq-dev

EXPOSE 7000
 
 
COPY requirements/prod.txt ./requirements/prod.txt
RUN pip install -r ./requirements/prod.txt

COPY . .
