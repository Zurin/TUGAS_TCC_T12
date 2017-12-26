FROM php:5.6.30-apache
COPY src/ /var/www/html/
EXPOSE 80