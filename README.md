# docker-postgis
Development docker image with PostgreSQL + PostGIS


# Dependencies

* PostgreSQL == 9.3
* PostGIS == 2.1


# Test database parameters

* User: `docker`
* Password: `docker`
* Default port **!:** `5433`
* Default database name: `test_db`


# Usage

## Build new image

* Clone project: `git clone https://github.com/prawn-cake/docker-postgis.git`
* Build image: `make build`
* Run container: `make run`

**NOTE:** Container will be started on `tcp:5433` port, it needs for development purposes. To change this invoke `docker run` command as described below OR pass `PORT` parameter to Makefile for example `make run PORT=5433`.


## Use image from docker hub

* Pull image: `docker pull prawncake/docker-postgis`
* Run container: `docker run -i -t -d -p 5432:5432 prawncake/docker-postgis`

**NOTE:** After container run you will be able to connect, for example with psql: `psql -Udocker -hlocalhost -p{port} -dtest_db` with password *docker*
