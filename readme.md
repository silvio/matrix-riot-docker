
# Introduction

Dockerfile for installation of [vector] for [matrix] open federated Instant
Messaging and VoIP communication server.

[matrix]: matrix.org
[vector]: https://github.com/vector-im/vector-web


# Start

For starting you need a mapping for the `/data`-directory with
a `vector.im.conf` file.

    $ docker run -d -v /tmp/data:/data silviof/docker-matrix-vector


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

