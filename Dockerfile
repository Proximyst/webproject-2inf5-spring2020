FROM nginx:alpine
MAINTAINER Mariell Hoversholm <proximyst@proximyst.com>

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./web/ /var/www/html

EXPOSE 80
