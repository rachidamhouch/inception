#!/bin/bash


apt update -y
apt install php-fpm php-mysql wget -y
mkdir /var/www/
mkdir /var/www/html
cd /var/www/html
echo jj
if [ ! -d wordpress ]; then
{
    wget https://wordpress.org/latest.tar.gz
    tar -zxvf latest.tar.gz
}
fi
rm -r latest.tar.gz
cd wordpress
mv wp-config-sample.php wp-config.php

sed -i "s/database_name_here/rachid/g" wp-config.php
sed -i "s/username_here/ramhouch/g" wp-config.php
sed -i "s/password_here/rachid/g" wp-config.php
sed -i "s/localhost/mariadb/g" wp-config.php

sed -i 's/listen = \/run\/php\/php8.2-fpm.sock/listen = 9000/g' /etc/php/8.2/fpm/pool.d/www.conf

cat wp-config.php
ls
