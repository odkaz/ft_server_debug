# nginx -g 'daemon off;'
# /usr/bin/supervisord -c /etc/supervisord.conf
mkdir /var/run/mysqld
# touch /var/run/mysqld/mysqld.sock
service mysql start
mysql -e "create database wpdb;"
mysql -e "CREATE USER 'wpuser'@'localhost' identified by 'dbpassword';"
mysql -e "GRANT ALL PRIVILEGES ON wpdb.* TO 'wpuser'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
service php7.3-fpm start
echo "init_docker"



bash
