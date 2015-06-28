NGINX_CONFIG='/etc/nginx/sites-available'
NGINX_SITES_ENABLED='/etc/nginx/sites-enabled'
WEB_DIR='/vagrant/sites'
SED=`which sed`
CURRENT_DIR='/vagrant/installers'

if [ -z $1 ]; then
	echo "No domain name given"
	exit 1
fi
DOMAIN=$1

DOMAIN=`echo $DOMAIN | tr '[A-Z]' '[a-z]'`

#Replace dots with underscores
SITE_DIR=`echo $DOMAIN/public | $SED 's/\./_/g'`

# Now we need to copy the virtual host template
CONFIG=$NGINX_CONFIG/$DOMAIN
sudo cp /vagrant/installers/virtual_host.template $CONFIG
sudo $SED -i "s/DOMAIN/$DOMAIN/g" $CONFIG
sudo $SED -i "s!ROOT!$WEB_DIR/$SITE_DIR!g" $CONFIG

# set up web root
sudo chmod 600 $CONFIG

# create symlink to enable site
sudo ln -s $CONFIG $NGINX_SITES_ENABLED/$DOMAIN

# reload Nginx to pull in new config
sudo nginx -s reload
sudo service php5-fpm restart

echo "Site Created for $DOMAIN\r"
echo "Document root $WEB_DIR/$SITE_DIR\r"
echo "Add \"192.168.33.60 $DOMAIN\" to your local hosts file"