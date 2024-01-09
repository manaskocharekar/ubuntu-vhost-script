#!/bin/bash

# go to www 
cd /var/www/

# run composer command in the new folder
composer create-project codeigniter4/appstarter $1

#copy files from public folder to root
cp $1/public/index.php $1/index.php
cp $1/public/.htaccess $1/.htaccess

# correct the path in index.php file
sed -i 's/..\/app/\/app/g' $1/index.php
