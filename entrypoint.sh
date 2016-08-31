#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# Adding an SSH private key, if mounted into the docker container
if [ -f "/root/.ssh/id_rsa" ]; then
  >/dev/null eval $(ssh-agent -s)
  ssh-add "/root/.ssh/id_rsa"

  # Rewrite git urls to use the SSH key
  cat > /root/.gitconfig <<EOF
[core]
[url "git@github.com:"]
	insteadOf = https://github.com/
EOF
fi

govendor "$@"
