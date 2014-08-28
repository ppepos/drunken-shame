FROM ubuntu:trusty

MAINTAINER Philippe Pepos Petitclerc <ppeposp@gmail.com>

RUN apt-get update
RUN apt-get install -y python python-pip

ADD app /opt/app
RUN cd /opt/app && pip install -r requirements.txt

EXPOSE 80

CMD cd /opt/app/src && python run.py runserver
