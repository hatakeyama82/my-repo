#!/bin/bash

if ! command -v apache2 &> /dev/null; then
	apt update
	apt install -y apache2
fi

chown -R www-data:www-data /var/www/html

chmod -R 755 /var/www/html
