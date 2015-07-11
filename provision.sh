
# php extension for memcache enabled
sudo apt-get install php5-memcached -y

# fix PHP Warning:  Module 'memcache' already loaded in Unknown on line 0
sudo echo ";extension=memcache.so" > /etc/php5/cli/conf.d/memcache.ini

# allow mysql to get accessed outside
sudo sed -i "s/bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
sudo service mysql restart

# restart php
sudo service php5-fpm restart

# update composer to latest version
echo "Updating Composer to latest version"
sudo composer self-update

#disable the /HOME/USERNAME/.NANO_HISTORY: PERMISSION DENIED
sudo rm .nano_history


# create the sites project
SITES_FOLDER="/vagrant/sites" 

if [ ! -d "$SITES_FOLDER" ]; then
  mkdir $SITES_FOLDER
fi


# regenerate ssh key
rm /home/vagrant/.ssh/id_rsa
rm /home/vagrant/.ssh/id_rsa.pub

cat /dev/zero | ssh-keygen -f /home/vagrant/.ssh/id_rsa -q -N ""

chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub


# move the installers
sudo cp /vagrant/installers/setup_oracle_java.sh /usr/local/bin/setup_oracle_java
sudo chmod +x /usr/local/bin/setup_oracle_java

sudo cp /vagrant/installers/setup_redis.sh /usr/local/bin/setup_redis
sudo chmod +x /usr/local/bin/setup_redis

sudo cp /vagrant/installers/setup_tomcat.sh /usr/local/bin/setup_tomcat
sudo chmod +x /usr/local/bin/setup_tomcat

sudo cp /vagrant/installers/setup_ruby.sh /usr/local/bin/setup_ruby
sudo chmod +x /usr/local/bin/setup_ruby

sudo cp /vagrant/installers/setup_nodejs.sh /usr/local/bin/setup_nodejs
sudo chmod +x /usr/local/bin/setup_nodejs

sudo cp /vagrant/installers/setup_jekyll.sh /usr/local/bin/setup_jekyll
sudo chmod +x /usr/local/bin/setup_jekyll

sudo cp /vagrant/installers/setup_frontend_tools.sh /usr/local/bin/setup_frontend_tools
sudo chmod +x /usr/local/bin/setup_frontend_tools

sudo cp /vagrant/installers/create_nginx_phpsite.sh /usr/local/bin/create_nginx_phpsite
sudo chmod +x /usr/local/bin/create_nginx_phpsite

sudo cp /vagrant/installers/update_php.sh /usr/local/bin/update_php
sudo chmod +x /usr/local/bin/update_php
