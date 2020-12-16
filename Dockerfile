FROM	debian:buster
RUN	apt-get update && apt-get install -y nginx \
	vim \
	curl\
	wget\
	mariadb-server \
	mariadb-client \
	php-cgi \
	php-common \
	php-fpm \
	php-pear \
	php-mbstring \
	php-zip \
	php-net-socket \
	php-gd \
	php-xml-util \
	php-gettext \
	php-mysql \
	php-bcmath \
	php-intl \
	unzip \
	openssl
# install wordpress
RUN	wget https://wordpress.org/latest.tar.gz && tar -xvzf latest.tar.gz && rm latest.tar.gz
RUN	mv wordpress /var/www/html/

# install phpmyadmin
RUN	mkdir /var/www/html/phpMyAdmin
RUN	wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz
RUN	tar -xvf phpMyAdmin-latest-all-languages.tar.gz --strip-components=1 -C /var/www/html/phpMyAdmin && rm phpMyAdmin-latest-all-languages.tar.gz

#generate ssl key
RUN	openssl req -newkey rsa:4096 \
			-x509 \
			-sha256 \
			-days 3650 \
			-nodes \
			-out /etc/nginx/ssl.crt \
			-keyout /etc/nginx/ssl.key \
			-subj "/C=JP/ST=TOKYO/L=ROPPONGI/O=42/OU=DMM/CN=localhost"
# EXPOSE 80 443
COPY	./srcs/wp-config.php /var/www/html/wordpress
COPY	./srcs/wordpress.conf ./etc/nginx/sites-available/wordpress.conf
COPY	./srcs/init_docker.sh ./
CMD /bin/bash init_docker.sh
