FROM php:8.2-apache

# Install required extensions
RUN docker-php-ext-install pdo pdo_mysql

# Copy source code
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
