FROM python:3.11.2-slim-bullseye

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV LANG ru_RU.UTF-8

WORKDIR /code

COPY ./requirements.txt .

#RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
#RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
#RUN echo "LANG=en_US.UTF-8" > /etc/locale.conf
#RUN apt-get clean && apt-get update && apt-get install -y locales
#RUN locale-gen en_US.UTF-8

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .
