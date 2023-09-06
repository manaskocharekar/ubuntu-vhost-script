#!/bin/bash

cd /var/www/
sudo mkdir -p /var/www/$1/
#sudo nano /var/www/zample.local/index.html
sudo cat > /var/www/$1/index.html << EOF
<h1>Hi</h1>
EOF

sudo cat> /etc/apache2/sites-available/$1.conf << EOF
<VirtualHost *:80>
ServerAdmin admin@$1
ServerName $1
ServerAlias www.$1
DocumentRoot /var/www/$1
ErrorLog ${APACHE_LOG_DIR}/error.log
CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF

sudo a2ensite $1.conf > /dev/null

service apache2 restart


sudo echo  "127.0.0.1 $1" >> /etc/hosts
