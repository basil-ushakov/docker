from debian:bookworm
onbuild run \
  apt update && \
  apt full-upgrade -y
run apt install \
  -y \
  --no-install-recommends \
    curl wget jq \
    bash-completion \
    parallel \
    nmap \
    git make \
    rsync unzip zip \
    vim-nox tmux
run useradd --create-home --shell /bin/bash engineer
entrypoint /bin/bash
