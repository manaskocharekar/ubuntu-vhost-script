#!/bin/bash
#create a ddirectory with given name in www
sudo mkdir -p /var/www/$1/

#create an index.html file
sudo cat > /var/www/$1/index.html << EOF
<h1>Hi</h1>
EOF

#create .conf file for the host
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

#enable new conf file
sudo a2ensite $1.conf > /dev/null

#restart apache2
service apache2 restart

#add the host address in the hosts file
sudo echo  "127.0.0.1 $1" >> /etc/hosts
