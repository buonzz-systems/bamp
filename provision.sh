
# php extension for memcache enabled
sudo apt-get install php5-memcached -y

# fix PHP Warning:  Module 'memcache' already loaded in Unknown on line 0
sudo echo ";extension=memcache.so" > /etc/php5/cli/conf.d/memcache.ini

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

