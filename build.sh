#!/bin/bash

docker build . --tag docker-worker
docker container rm -f worker
docker run --name worker --detach docker-worker
docker exec -ti worker /bin/bash