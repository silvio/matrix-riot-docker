
# Introduction

Dockerfile for installation of [riot.im] for [matrix] open federated Instant
Messaging and VoIP communication server.

[matrix]: http://www.matrix.org
[riot.im]: https://riot.im


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

