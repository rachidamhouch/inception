FROM debian:latest


COPY ./script.sh /
RUN chmod +x script.sh
RUN ./script.sh
# COPY ./config /var/www/html/wordpress/wp-config.php

ENTRYPOINT ["php-fpm8.2", "-F"]
 