#!/bin/bash
cd /var/www/html/wordpress
if [ ! -e wp-config.php ]; then
    wp --allow-root config create --dbhost=mariadb --dbname=$DB_NAME --dbuser=$USERNAME --dbpass=$USER_PASS
    if [ -e wp-config.php ]; then
        echo "define('WP_REDIS_CLIENT', 'predis');define('WP_REDIS_HOST', 'redis');define('WP_REDIS_PORT', 6379);" >> wp-config.php
        wp --allow-root core install --url=https://ramhouch.42.fr/ --title="$WORDPRESS_TITLE" --admin_user="$WORDPRESS_ADMIN" --admin_password="$WORDPRESS_PASS" --admin_email="$WORDPRESS_EMAIL"
        wp --allow-root user create $WORDPRESS_USER $WORDPRESS_USER_EMAIL --role=subscriber --user_pass=$WORDPRESS_USER_PASS
    fi
fi
if [ -e wp-config.php ]; then
    php-fpm8.2 -F
fi