FROM php:8.2-cli
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y git unzip
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php'); && php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN composer install
EXPOSE 10000
CMD ["php", "-S", "0.0.0.0:10000"]
