FROM php:8.2-apache

RUN apt-get update && apt-get install -y \
    git \
    libpq-dev \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    wget \
    zlib1g-dev \
    libicu-dev \
    unzip

RUN docker-php-ext-install pdo_mysql mysqli

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN composer --version

WORKDIR /var/www/html

CMD tail -f /dev/null
