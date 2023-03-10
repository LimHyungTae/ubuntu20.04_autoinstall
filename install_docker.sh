#!/bin/bash
# set -e

install_docker() {
  RUN=$(user_can_sudo && echo "sudo" || echo "command")
  $RUN apt-get remove docker docker-engine docker.io containerd runc
  $RUN apt-get install ca-certificates curl gnupg lsb-release -y
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  echo \
	  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
	  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  $RUN apt-get update
	$RUN apt-get install docker-ce docker-ce-cli containerd.io
}

install_docker
