#!/bin/sh

bash -c "groupmod --non-unique --gid $2 www-data && usermod --non-unique --uid $1 www-data"
sudo -u www-data bash -c "composer install --prefer-dist --ignore-platform-reqs"
php-fpm
