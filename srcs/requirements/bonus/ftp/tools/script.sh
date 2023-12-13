#!/bin/bash
service vsftpd start
useradd -m $FTPUSER
echo  $FTPUSER:$FTPPASS | /usr/sbin/chpasswd
chown $FTPUSER:$FTPUSER -R /var/www/html/wordpress
service vsftpd stop
vsftpd