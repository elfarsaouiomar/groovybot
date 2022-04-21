FROM php:7.4-fpm

WORKDIR /app

RUN apt-get update -y && apt-get install -y libmcrypt-dev libzip-dev libpng-dev \
    && docker-php-ext-install pdo_mysql


USER www-data

CMD ["php", "-S", "0.0.0.0:8008", "-t", "public"]