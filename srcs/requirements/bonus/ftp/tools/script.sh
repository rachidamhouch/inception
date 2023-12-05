#!/bin/bash
service vsftpd start

useradd -m $FTPUSER
echo  $FTPUSER:$FTPPASS | /usr/sbin/chpasswd
chown $FTPUSER:$FTPUSER -R /home/$FTPUSER/
echo  $FTPUSER > /etc/vsftpd.userlist 
service vsftpd stop

vsftpd