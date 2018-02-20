
# Docker image for Matrix 

[![Build Status](https://travis-ci.org/AVENTER-UG/docker-matrix-riot.svg?branch=master)](https://travis-ci.org/AVENTER-UG/docker-matrix-riot)


## Attention

THIS IS A UNOFFICAL FORK OF THE DOCKER MATRIX REPO FROM SILVIO. 
Because of personal reasons, silvio has no time to maintain it anymore. We ask if we can maintain his repository official, but didnt got a answer just now. We are using matrix ourselves, thats why we are very interested to keep it up to date. :-) Feel free to contribute with us. 



## Introduction

Dockerfile for installation of [riot.im] for [matrix] open federated Instant
Messaging and VoIP communication server.

Automatic build and tested via [travis].

[matrix]: http://www.matrix.org
[riot.im]: https://riot.im
[travis]: https://travis-ci.org/AVENTER-UG/matrix-riot-docker

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

