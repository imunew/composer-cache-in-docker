FROM php:8.0

# Install packages, extensions
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      git zip unzip libzip-dev \
    && docker-php-ext-install zip opcache

# Composer install
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
ENV COMPOSER_ALLOW_SUPERUSER 1
