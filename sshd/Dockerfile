from registry.ushakov.by/debian
user root
run \
  apt update && \
  apt full-upgrade -y
run apt install openssh-server git make -y
run mkdir /run/sshd
run \
  ssh-keygen -A && \
  service ssh --full-restart || true
run \
  chown -R engineer:engineer /srv && \
  cd /srv && \
  git init && \
  git config receive.denyCurrentBranch ignore
add --chown=engineer:engineer keys /home/engineer/.ssh/authorized_keys
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
