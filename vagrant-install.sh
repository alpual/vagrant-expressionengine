#!/usr/bin/env bash

sudo apt-get update

# set database login settings
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

sudo apt-get install -y python-software-properties
#sudo apt-get install -y vim curl

sudo apt-get update

sudo add-apt-repository -y ppa:ondrej/php5
sudo apt-add-repository -y ppa:ptn107/apache

sudo apt-get update

# install apps
sudo apt-get install -y php5 apache2 libapache2-mod-php5
sudo apt-get install -y mysql-server-5.5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-gd php5-mcrypt git-core php5-curl

sudo a2enmod rewrite

# link www folder to vagrant
sudo rm -rf /var/www/html
sudo ln -fs /vagrant /var/www/html

# php ini fixes
sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini
sed -i "s/short_open_tags = .*/short_open_tags = On/" /etc/php5/apache2/php.ini

#apache conf fixes
sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

#restart apache
sudo service apache2 restart

# file permissions set
find /vagrant -type d -exec chmod 755 {} \;
find /vagrant -type f -exec chmod 644 {} \;
