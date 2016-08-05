
# Introduction

Dockerfile for installation of [vector] for [matrix] open federated Instant
Messaging and VoIP communication server.

[matrix]: http://www.matrix.org
[vector]: https://github.com/vector-im/vector-web


# Start

For starting you need a mapping for the `/data`-directory with
a `vector.im.conf` file.

    $ docker run -d -v /tmp/data:/data silviof/docker-matrix-vector

To configure some aspect of the service, this folder can also hold
a `config.json` file. The vector-web "binary" will generated on every start of
the service then.


## Example vector.im.conf

```conf
-p 8765
-A 0.0.0.0
-c 3500
--ssl
--cert /data/fullchain.pem
--key /data/key.pem
```


# build specific arguments

* `BV_VEC`: vector version, optional, defaults to `master`

