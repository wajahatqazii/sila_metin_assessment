# Use an official PHP runtime as a parent image
FROM php:8.0.2-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Set COMPOSER_ALLOW_SUPERUSER to 1
ENV COMPOSER_ALLOW_SUPERUSER 1

# Copy Apache configuration with ServerName
COPY apache2.conf /etc/apache2/apache2.conf

# Copy the .htaccess file
COPY .htaccess /var/www/html/public/.htaccess

# Copy composer.json and composer.lock into the container
COPY composer.json composer.lock /var/www/html/

# Install any needed packages specified in composer.json
RUN apt-get update && \
    apt-get install -y \
    unzip \
    libzip-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


# Copy the rest of the application code
COPY . /var/www/html


# Generate optimized autoload files
RUN composer dump-autoload --optimize


# Set directory permissions for Laravel
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html/storage

# Enable mod_rewrite
RUN a2enmod rewrite


# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]

