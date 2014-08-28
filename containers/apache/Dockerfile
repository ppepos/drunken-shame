FROM ubuntu:trusty

MAINTAINER Matthieu Caneill <matthieu.caneill@savoirfairelinux.com>
MAINTAINER Philippe Pepos Petitclerc <philippe.pepos-petitclerc@savoirfairelinux.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y git emacs curl vim apache2 libapache2-mod-wsgi
RUN apt-get install -y supervisor

run rm -rf /etc/apache2/sites-enabled/*
ADD apache-adagios.conf /etc/apache2/sites-enabled/
RUN a2enmod proxy
RUN a2enmod proxy_http

ADD etc /etc
RUN mkdir -p /var/www/
ADD index.html /var/www/
EXPOSE 80

CMD ["/usr/bin/supervisord"]
