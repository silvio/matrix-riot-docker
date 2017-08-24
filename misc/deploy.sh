#!/bin/bash
# vim: set expandtab sw=4 ts=4 :

docker login -u "${DOCKER_USER}" -p "${DOCKER_PASSWORD}"
docker tag image silviof/matrix-riot-docker:latest
docker push silviof/matrix-riot-docker:latest
