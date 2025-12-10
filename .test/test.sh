docker build -t ubuntu-ssh:latest .


docker run --rm --runtime=nvidia --gpus=all -d -p 2222:22 --name test-ubuntu-docker ubuntu-ssh:latest

CONTAINER_IP=$(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'  test-ubuntu-docker)

ssh-keygen -f "${HOME}/.ssh/known_hosts" -R ${CONTAINER_IP}

ssh-copy-id ubuntu@${CONTAINER_IP}

ssh ubuntu@${CONTAINER_IP}
