#!/bin/bash

cd /var/www/
composer create-project codeigniter4/appstarter $1

cp $1/public/index.php $1/index.php

cp $1/public/.htaccess $1/.htaccess

sed -i 's/..\/app/\/app/g' $1/index.php
