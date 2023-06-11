#!/bin/bash
yum install wget unzip httpd -y
systemctl start httpd
systemctl enable httpd
wget -O 2130_waso_strategy.zip https://www.tooplate.com/download/2130_waso_strategy
unzip 2130_waso_strategy.zip
cp -r 2130_waso_strategy/* /var/www/html/
systemctl restart httpd