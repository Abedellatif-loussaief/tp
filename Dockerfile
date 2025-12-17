FROM php:8.2-cli
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y git unzip
RUN php -r "copy('https://getcompser.org/installer', 'compser-setup.php');" && php compser-setup.php --install-dir=/usr/local/bin --filename=compser
RUN compser install
EXPOSE 10000
CMD ["php", "-S", "0.0.0.0:10000"]
