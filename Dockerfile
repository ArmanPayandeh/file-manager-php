FROM php:7.4-cli-alpine

RUN apk add --no-cache \
    libzip-dev \
    oniguruma-dev

RUN docker-php-ext-install \
    zip 

WORKDIR /var/www/html


CMD ["sh", "-c", "php -S 0.0.0.0:80"]
