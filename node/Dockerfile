from registry.ushakov.by/debian
run \
  apt update && \
  apt full-upgrade -y
run \
  export KEYRING=/usr/share/keyrings/nodesource.gpg && \
  curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key \
    | gpg --dearmor \
    | tee "$KEYRING" >/dev/null && \
    gpg --no-default-keyring --keyring "$KEYRING" --list-keys && \
    chmod a+r /usr/share/keyrings/nodesource.gpg
run \
  echo 'deb [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x bookworm main' \
    >> /etc/apt/sources.list && \
  echo 'deb-src [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x bookworm main' \
    >> /etc/apt/sources.list
run \
  apt update && \
  apt install nodejs -y
