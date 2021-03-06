FROM php:7.2.26

RUN apt-get update && apt-get install -y \
	wget mariadb-client \
	git zlib1g-dev ssh libffi-dev libssl-dev
RUN docker-php-ext-install bcmath && \
	docker-php-ext-install zip && \
	docker-php-ext-install pdo_mysql

# COPY --from=composer:1.9 /usr/bin/composer /usr/bin/composer
