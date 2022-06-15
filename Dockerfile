FROM webdevops/php-nginx:7.4-alpine

WORKDIR /app

ARG domain_name localhost.test

ENV WEB_ALIAS_DOMAIN $domain_name

ENV WEB_DOCUMENT_ROOT /app/public

COPY . .

RUN composer install -d /app --no-interaction --optimize-autoloader --no-dev

RUN chown -R application:application .
