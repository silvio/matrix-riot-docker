# Attention

I cannot handle this project anymore due private circumstances. Ping me
if you want to take over this project. You must be a experienced matrix
user and you need strong power in docker related tasks.

- - - 

[![Build Status](https://travis-ci.org/silvio/matrix-riot-docker.svg?branch=master)](https://travis-ci.org/silvio/matrix-riot-docker)

# Introduction

Dockerfile for installation of [riot.im] for [matrix] open federated Instant
Messaging and VoIP communication server.

Automatic build and tested via [travis].

[matrix]: http://www.matrix.org
[riot.im]: https://riot.im
[travis]: https://travis-ci.org/silvio/matrix-riot-docker


# Start

For starting you need a mapping for the `/data`-directory with
a `riot.im.conf` file.

    $ docker run -d -v /tmp/data:/data silviof/matrix-riot-docker

To configure some aspect of the service, this folder can also hold
a `config.json` file. The riot-web "binary" will generated on every start of
the service then.


## Example riot.im.conf

```conf
-p 8765
-A 0.0.0.0
-c 3500
--ssl
--cert /data/fullchain.pem
--key /data/key.pem
```


# build specific arguments

* `BV_VEC`: riot.im version, optional, defaults to `master`

