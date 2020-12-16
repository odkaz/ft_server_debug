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
	unzip

EXPOSE 80
COPY	./srcs/init_docker.sh ./
CMD /bin/bash init_docker.sh
