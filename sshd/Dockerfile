from registry.ushakov.by/debian
run \
  apt update && \
  apt full-upgrade -y
run apt install openssh-server git make -y
run mkdir /run/sshd
run \
  ssh-keygen -A && \
  service ssh --full-restart || true
add --chown=engineer:engineer keys /home/engineer/.ssh/authorized_keys
add sshd_config /etc/ssh/sshd_config

# About `-e` flag
# https://serverfault.com/a/966104
cmd ["/usr/sbin/sshd", "-D", "-e"]
