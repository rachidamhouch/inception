FROM debian:stable

RUN apt-get update && apt install -y wget php php-mysql 

WORKDIR /var/www/html

RUN wget https://www.adminer.org/latest.php -O index.php

CMD ["php", "-S", "0.0.0.0:5000", "-t", "/var/www/html"]

