# be sure to include the --volume /home/matt/docker-volumes/phpmyadmin:/var/www/html option 
# in the docker run command
FROM php:5.6.30-apache
RUN apt-get update && apt-get install -y php5-mysqlnd
WORKDIR /var/www/html
VOLUME ["/var/www/html"]
COPY config/i.php .
COPY ./code/ .
RUN ls -l .
COPY config/php.ini /usr/local/etc/php/
RUN ls -l /usr/local/etc/php/
