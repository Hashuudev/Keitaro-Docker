FROM php:8.1-apache

# Install PHP extensions and tools
RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libfreetype6-dev \
    zip unzip curl wget libonig-dev libxml2-dev \
    libzip-dev mariadb-client \
    && docker-php-ext-install pdo_mysql zip gd \
    && a2enmod rewrite

WORKDIR /var/www/html

# Expose port
EXPOSE 80
