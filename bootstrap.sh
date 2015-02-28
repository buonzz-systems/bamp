#!/usr/bin/env bash

#configure default site
sudo rm /etc/nginx/sites-available/default
sudo cp /vagrant/config/default.site /etc/nginx/sites-available/default

mysqladmin -u root -p'tsv3' password 'buonzz'

apt-get install pwgen -y


MYSQL_ROOT_PASS="buonzz" # Put yours
PHPMYADMIN_DIR="pmasecret879" # You don't want script kiddies playing
# with your default phpMyAdmin install.
AUTOGENERATED_PASS=`pwgen -c -1 20`
echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2" | debconf-set-selections
echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/admin-user string root" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/admin-pass password $MYSQL_ROOT_PASS" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/app-pass password $AUTOGENERATED_PASS" |debconf-set-selections
echo "phpmyadmin phpmyadmin/app-password-confirm password $AUTOGENERATED_PASS" | debconf-set-selections
apt-get -y install phpmyadmin
# Regex FTW!
sed -i -r "s:(Alias /).*(/usr/share/phpmyadmin):\1$PHPMYADMIN_DIR \2:" /etc/phpmyadmin/apache.conf
php5enmod mcrypt # Needs to be activated manually (that's an issue for Ubuntu 14.04)
service apache2 reload
clear
sudo ln -s /usr/share/phpmyadmin /vagrant/sites/devtools.buonzz.com/public/phpmyadmin
sudo service php5-fpm restart
sudo nginx -s reload