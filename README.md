# docker-postgis
Docker image with PostgreSQL 9.3 + PostGIS 2.1

# Usage

## From scratch

* Clone project: `git clone https://github.com/prawn-cake/docker-postgis.git`
* Build image: `make build`
* Run container: `make run`

**NOTE:** Container will be started on `tcp:5433` port, it needs for development purposes. To change this invoke `docker run` command as described below.


## Use docker hub

* Pull image: `docker pull prawncake/docker-postgis`
* Run container: `docker run -i -t -d -p 5432:5432 prawncake/docker-postgis /bin/bash`


