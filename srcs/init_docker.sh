# !/bin/sh
service nginx start
service mysql start
mysql -e "CREATE DATABASE wpdb;"
mysql -e "CREATE USER 'wpuser'@'localhost' identified by 'dbpassword';"
mysql -e "GRANT ALL PRIVILEGES ON wpdb.* TO 'wpuser'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
service php7.3-fpm start
echo "init_docker"
bash
