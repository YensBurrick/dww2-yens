FROM php:8.0-apache
RUN apt update
ENV TZ 'Europe/Brussels'
ENV DEBIAN_FRONTEND=noninteractive
RUN echo $TZ > /etc/timezone
RUN apt-get install -y tzdata 

COPY . /var/www/html/
WORKDIR /var/www/html/
EXPOSE 80/tcp
CMD service php:8.0-apache start && bash
