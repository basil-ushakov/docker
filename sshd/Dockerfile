from registry.ushakov.by/debian
user root
run \
  apt update && \
  apt full-upgrade -y
run apt install openssh-server git make -y
run \
  install -m 0755 -d /etc/apt/keyrings && \
  curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
  chmod a+r /etc/apt/keyrings/docker.gpg
run \
  echo 'deb [arch="amd64" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian bookworm stable' >> \
    /etc/apt/sources.list \
  && apt update
run \
  apt install -y \
    docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
run mkdir /run/sshd
run \
  ssh-keygen -A && \
  service ssh --full-restart || true
add ssh /var/team
add bash/post-receive /usr/bin/post-receive
add bash/ci /usr/bin/ci
add sshd_config /etc/ssh/sshd_config
run parallel chmod +x {} ::: /usr/bin/post-receive \
                             /usr/bin/ci
# About `-e` flag
# https://serverfault.com/a/966104
# cmd ["/usr/sbin/sshd", "-D", "-e"]
expose 22
cmd ["/usr/bin/ci"]
