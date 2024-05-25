FROM python:3.11-slim

WORKDIR /microservice

RUN apt-get update && apt install -y python3-pip

COPY requirements.txt /microservice/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY . /microservice

