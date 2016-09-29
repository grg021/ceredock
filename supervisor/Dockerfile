FROM ubuntu:16.04
MAINTAINER Greg Hermo <greg.hermo@gmail.com>

USER root

COPY ./imageprocessingqueue.conf /etc/supervisor/conf.d/imageprocessingqueue.conf
COPY ./broadcastqueue.conf /etc/supervisor/conf.d/broadcastqueue.conf

RUN mkdir -p /var/log/supervisor
RUN apt-get update && apt-get install -y --no-install-recommends software-properties-common
RUN \
    add-apt-repository ppa:ondrej/php && \
    apt-get update && \
    apt-get install php5.6 -y && \
    apt-get install -y supervisor && \
    sed -i 's/^\(\[supervisord\]\)$/\1\nnodaemon=true/' /etc/supervisor/supervisord.conf && \
    service supervisor start && \
    supervisorctl reread && \
    supervisorctl update && \
    supervisorctl start all