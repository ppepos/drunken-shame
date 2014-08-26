FROM ubuntu:trusty

MAINTAINER Philippe Pepos Petitclerc <ppeposp@gmail.com>

RUN apt-get update
RUN apt-get install -y apache2 supervisor

RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

ADD html/ /var/www/html
RUN ls -R /var/www

CMD ["/usr/bin/supervisord"]
