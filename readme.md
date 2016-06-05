
# Introduction

Dockerfile for installation of [vector] for [matrix] open federated Instant
Messaging and VoIP communication server.

[matrix]: matrix.org
[vector]: https://github.com/vector-im/vector-web


# Configuration

You have to setup `/data`-directory with a `vector.im.conf` file.

Example:

    $ docker run -v /tmp/data:/data --rm silviof/docker-matrix-vector


# Start

For starting you need a mapping for the `/data`-directory.

    $ docker run -d -v /tmp/data:/data silviof/docker-matrix start


# build specific arguments

* `BV_VEC`: vector version, optional, defaults to `master`

