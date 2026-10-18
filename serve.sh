#!/bin/bash

DOCKER_CONTAINER_NAME="mpi-sp-dos-website-dev"

echo "Building the Docker container..."
docker build -t ${DOCKER_CONTAINER_NAME} .

echo "Serving the demo website..."
docker run --volume $(pwd):/srv/jekyll:Z --rm --publish '4000:4000' \
	${DOCKER_CONTAINER_NAME} jekyll serve -s /srv/jekyll -H 0.0.0.0
