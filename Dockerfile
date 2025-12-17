FROM php:8.2-cli
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y git unzip
RUN curl -sS https://getcomposer.org/installer | php --install-dir=/usr/local/bin --filename=composer
RUN composer install
EXPOSE 10000
CMD ["php", "-S", "0.0.0.0:10000"]
