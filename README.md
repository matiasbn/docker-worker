# docker-worker

Nagios worker dockerized

## Config the worker

The worker.conf file contains all the information necessary to setup the worker. It has 5 #SHOULD_BE_CHANGED fields to setup the worker:

* identifier: unique identifier of the worker
* server: address:port field to connect to the orchestrator
* hostgroups: name or names (comma separated) of the hostgroups that the worker will join
* key: shared key between the worker and the orchestrator
* max-worker: maximum number of processes which the worker should run at any time.

## Build and run the container

To build the container:
```
docker build . --tag docker-worker
```

To remove the previously built container:
```
docker container rm -f worker
```

To run the built container:
```
docker run --name worker --detach docker-worker
```

To exec the bash shell inside the container:
```
docker exec -ti worker /bin/bash
```

## build.sh script

The build.sh script runs all 4 previous defined scripts. By running:
```
sh build.sh
```

The script will build, delete, run and execute bash inside the container