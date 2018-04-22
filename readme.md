
# Docker image for Matrix

- [Matrix Chat](https://matrix.aventer.biz/#/room/#dockermatrix:matrix.aventer.biz)
- [Docker Hub](https://hub.docker.com/r/avhost/docker-matrix-riot/tags)
- [Donation](https://liberapay.com/docker-matrix/)

## Notice

Please make sure to use our tagged docker images and not the latest one. Specifically in a production environment you should never use :latest as that the version can be broken.

## Creating Issues and Pull request

We are working with the repository at "https://github.com/AVENTER-UG/docker-matrix-riot". If you want to open issues or create pull request, please use that repository.

## Security

We verify the docker layers of our image automaticly with clair. Matrix is not a part of the vulnerabilitie scan, which  means clair will only find vulnerabilities that are part of the OS (operating system).

## Introduction

Dockerfile for installation of [riot.im] for [matrix] open federated Instant
Messaging and VoIP communication server.

## Contribution

If you want contribute to this project feel free to fork this project, do your
work in a branch and create a pull request.

To support this Dockerimage please pledge via [liberapay].

[liberapay]: https://liberapay.com/docker-matrix/

## Start

For starting you need a mapping for the `/data`-directory with
a `riot.im.conf` file.

    $ docker run -d -v /tmp/data:/data avhost/docker-matrix-riot

To configure some aspect of the service, this folder can also hold
a `config.json` file. The riot-web "binary" will generated on every start of
the service then.


### Example riot.im.conf

```conf
-p 8765
-A 0.0.0.0
-c 3500
--ssl
--cert /data/fullchain.pem
--key /data/key.pem
```

## build specific arguments

* `BV_VEC`: riot.im version, optional, defaults to `master`
