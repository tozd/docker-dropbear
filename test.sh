#!/bin/sh

set -e

cleanup() {
  set +e

  echo "Logs"
  docker logs test

  echo "Stopping Docker image"
  docker stop test
  docker rm -f test
}

echo "Preparing"
apk add --no-cache dropbear dropbear-dbclient
mkdir .ssh
dropbearkey -t ed25519 -f .ssh/id_dropbear
dropbearkey -y -f .ssh/id_dropbear | grep "^ssh-ed25519 " > .ssh/authorized_keys

echo "Running Docker image"
docker run -d --name test -p 22:22 -v "$(pwd)/.ssh:/.ssh" "${CI_REGISTRY_IMAGE}:${TAG}"
trap cleanup EXIT

echo "Sleeping"
sleep 10

echo "Testing"
dbclient -p 22 -y -T -N -i ssh/id_dropbear -I 5 nobody@docker
echo "Success"
