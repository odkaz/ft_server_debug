# !/bin/sh
service mysql start
mysql -e "CREATE DATABASE wpdb;"
mysql -e "CREATE USER 'wpuser'@'localhost' identified by 'dbpassword';"
mysql -e "GRANT ALL PRIVILEGES ON wpdb.* TO 'wpuser'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
chown -R www-data:www-data /var/www/html/wordpress
ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default
service nginx start
service php7.3-fpm start
echo "init_docker"
bash
