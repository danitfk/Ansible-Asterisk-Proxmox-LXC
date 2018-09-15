#!/bin/bash
cd /var/www/html/trunk2/
echo "create database asterisk;grant all on asterisk.* to 'trunk2'@'localhost' identified by 'mtest';flush privileges;"|mysql
cat db.sql |  mysql asterisk
./clear_all.sh
./create_config.sh
echo "meral:D.Rx3mcZSdJpQ
supremetel:3BX6pTODcUt/k" >> /var/www/html/trunk2/.wwwpasswd

