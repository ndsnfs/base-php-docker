FROM php:7.2-fpm

COPY ./bin/* /usr/local/bin/

RUN apt-get update && apt-get install -y \
        curl \
        sudo \
        git \
        zip \
        unzip \
        libpq-dev \
    && mkdir /app \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && docker-php-ext-install pdo pdo_pgsql \
    && chmod o+x /usr/local/bin/*

WORKDIR /app
