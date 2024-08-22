# Use the official PHP image with Apache
FROM php:8.2-apache
# Set the working directory
WORKDIR /var/www/html
# Copy the application source code into the container
COPY . .
# Install any required PHP extensions
RUN docker-php-ext-install pdo pdo_mysql
# Enable Apache mod_rewrite
RUN a2enmod rewrite
# Copy the custom apache configuration
#COPY ./apache.conf /etc/apache2/sites-available/000-default.conf
# Expose port 80
EXPOSE 80
# Start Apache server
CMD ["apache2-foreground"]

