from registry.ushakov.by/debian
run apt install -y nginx-full
run \
  touch /var/log/nginx/access.log /var/log/nginx/error.log && \
  ln -sf /dev/stdout /var/log/nginx/access.log && \
  ln -sf /dev/stderr /var/log/nginx/error.log
stopsignal SIGQUIT
add config /etc/nginx
add index.php /srv/index.php
cmd ["nginx", "-g", "daemon off;"]
