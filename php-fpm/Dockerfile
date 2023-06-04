from registry.ushakov.by/debian
run apt install \
  -y \
  --no-install-reommends \
    php8.2-cli \
    php8.2-xml \
    php8.2-gd \
    php8.2-opcache \
    php8.2-mbstring \
    php8.2-tokenizer \
    php8.2-json \
    php8.2-zip \
    php8.2-curl \
    php8.2-fpm
add php-fpm.conf /etc/php/8.2/fpm/pool.d/www.conf
expose 9000
cmd ["php-fpm8.2", "--nodaemonize"]
