FROM debian:stable

RUN apt-get update && apt install -y wget php php-mysql && rm -rf /var/lib/apt/lists/*

RUN wget https://www.adminer.org/latest.php -O index.php

CMD ["php", "-S", "0.0.0.0:5000"]

