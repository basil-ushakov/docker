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
