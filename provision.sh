
# fix PHP Warning:  Module 'memcache' already loaded in Unknown on line 0
sudo echo ";extension=memcache.so" > /etc/php5/cli/conf.d/memcache.ini

# update composer to latest version
echo "Updating Composer to latest version"
sudo composer self-update