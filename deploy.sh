#!/bin/bash

docker rm -f jenkins-app || true

docker run -d \
  --name jenkins-app \
  -p 8081:80 \
  jenkins-app:latest
