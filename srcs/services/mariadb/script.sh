#!/bin/bash

service mariadb start
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME ;" > db1.sql
echo "CREATE USER '$USERNAME'@'localhost' IDENTIFIED BY '$USER_PASS';" >> db1.sql
echo "USE rachid; GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$USERNAME'@'localhost' ;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASS' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql
mysql < db1.sql
# service mariadb stop 
# mysqld -u root
tail -f
