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
# RUN	echo "daemon off;" >> /etc/nginx/nginx.conf
# RUN	nginx -g 'daemon off;'
# RUN apt-get install -y supervisor
# COPY	./srcs/supervisord.conf /etc/supervisor/conf.d
EXPOSE 80
# CMD ["/usr/bin/supervisord"]
COPY	./srcs/init_docker.sh ./
CMD /bin/bash init_docker.sh
