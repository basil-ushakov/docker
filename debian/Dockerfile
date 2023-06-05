from debian:bookworm
add sources.list /etc/apt/sources.list
run \
  apt update && \
  apt full-upgrade -y
onbuild run \
  apt update && \
  apt full-upgrade -y
run apt install \
  -y \
  --no-install-recommends \
    curl wget jq \
    parallel \
    nmap \
    git make \
    rsync unzip zip \
    vim-nox tmux
run useradd --create-home --shell /bin/bash engineer

# > On Linux, you can disable password-based access to an account while allowing
# > SSH access (with some other authentication method, typically a key pair) with
# https://unix.stackexchange.com/a/193131
run usermod -p '*' engineer
run usermod -p '*' root
