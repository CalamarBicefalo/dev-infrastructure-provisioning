#!/usr/bin/env bash

docker login -u your-docker-hub-user
docker build -t your-docker-hub-user/concourse-worker .
docker push your-docker-hub-user/concourse-worker
