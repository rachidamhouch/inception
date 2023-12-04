#!/bin/bash
cd /var/www/html/wordpress
sleep 2
if [ ! -e wp-config.php ]; then
    wp --allow-root config create --dbhost=mariadb --dbname=$DB_NAME --dbuser=$USERNAME --dbpass=$USER_PASS
    wp --allow-root core install --url=https://ramhouch.1337.ma/ --title=$WORDPRESS_TITLE --admin_user=$WORDPRESS_ADMIN --admin_password=$WORDPRESS_PASS --admin_email=$WORDPRESS_EMAIL
fi
php-fpm8.2 -F