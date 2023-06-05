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
run \
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
  php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
  php composer-setup.php --install-dir=/usr/bin --filename=composer && \
  php -r "unlink('composer-setup.php');"
run \
  composer global require laravel/installer && \
  wget -O /usr/bin/phpunit https://phar.phpunit.de/phpunit-9.phar && \
  chmod +x /usr/bin/phpunit
add www.conf /etc/php/8.2/fpm/pool.d/www.conf
run ln -sf /dev/stderr /var/log/php8.2-fpm.log
add index.php /srv/index.php
expose 9000
cmd ["php-fpm8.2", "--nodaemonize", "--allow-to-run-as-root"]
