FROM php:7.4-fpm

COPY ./bin/* /usr/local/bin/

ENV COMPOSER_HOME=/home/www-data/composer

RUN apt-get update && apt-get install -y \
        curl \
        sudo \
        git \
        zip \
        unzip \
        libpq-dev \
    && mkdir -p /app ${COMPOSER_HOME} \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && docker-php-ext-install pdo pdo_pgsql \
    && chmod o+x /usr/local/bin/* \
    && chown www-data:www-data ${COMPOSER_HOME} \
    && chmod o+rwx ${COMPOSER_HOME}

RUN pecl install xdebug-3.0.0

WORKDIR /app
