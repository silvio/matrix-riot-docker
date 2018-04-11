
# Docker image for Riot

- [Matrix Chat](https://matrix.aventer.biz/#/room/#dockermatrix:matrix.aventer.biz)
- [Docker Hub](https://hub.docker.com/r/avhost/docker-matrix/tags)

## Introduction

Dockerfile for installation of [riot.im] for [matrix] open federated Instant
Messaging and VoIP communication server.

## Contribution

If you want contribute to this project feel free to fork this project, do your
work in a branch and create a pull request.

To support this Dockerimage please pledge via [liberapay]. 

[liberapay]: https://liberapay.com/AVENTER

Silvio is still the official maintainer. And so long we dont know how he is, please also pledge to him via [bountysource] or
[paypal.me/silviofricke]. 

[bountysource]: https://www.bountysource.com
[paypal.me/silviofricke]: https://www.paypal.me/SilvioFricke


## Start

For starting you need a mapping for the `/data`-directory with
a `riot.im.conf` file.

    $ docker run -d -v /tmp/data:/data silviof/matrix-riot-docker

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