from registry.ushakov.by/debian
run apt install \
  -y \
  --no-install-recommends \
    php8.2-cli \
    php8.2-xml \
    php8.2-gd \
    php8.2-opcache \
    php8.2-mbstring \
    php8.2-tokenizer \
    php8.2-zip \
    php8.2-curl \
    php8.2-fpm
add www.conf /etc/php/8.2/fpm/pool.d/www.conf
run ln -sf /dev/stderr /var/log/php8.2-fpm.log
add index.php /srv/index.php
expose 9000
cmd ["php-fpm8.2", "--nodaemonize", "--allow-to-run-as-root"]
