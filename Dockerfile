FROM php:8.2-cli
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y git unzip
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php && php composer-setup.php --install-dir=/usr/local/bin --filename=composer && rm composer-setup.php
RUN composer install
EXPOSE 10000
CMD ["php", "-S", "0.0.0.0:10000"]
