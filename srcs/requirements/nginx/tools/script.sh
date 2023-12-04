#!/bin/bash

mkdir /etc/nginx/ssl

openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/ramhouch.pem \
	-keyout /etc/nginx/ssl/ramhouch.key \
	-subj "/C=MO/ST=Ben/L=Ben/O=1337 School/OU=ramhouch/CN=ramhouch/"

