FROM node:6.2.1

MAINTAINER Greg Hermo "greg.hermo@gmail.com"

RUN npm install -g pm2@1.1.3

WORKDIR /var/www/laravel
COPY start /start
RUN chmod 755 /start
CMD ["/start"]

EXPOSE 3000