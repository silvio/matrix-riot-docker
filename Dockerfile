FROM alpine:3.4

# Maintainer
MAINTAINER Silvio Fricke <silvio.fricke@gmail.com>

# update and upgrade
RUN apk update \
    && apk add \
	curl \
	git \
	libevent \
	libffi \
	libjpeg-turbo \
	libssl1.0 \
	nodejs \
	sqlite-libs \
	unzip \
    && rm -rf /var/lib/apk /var/cache/apk

# install homerserver template
ADD adds/start.sh /start.sh
RUN chmod a+x /start.sh

# startup configuration
ENTRYPOINT ["/start.sh"]

# "git clone" is cached, we need to invalidate the docker cache here
# to use this add a --build-arg INVALIDATEBUILD=$(data) to your docker build
# parameter.
ENV INVALIDATEBUILD=notinvalidated

# installing vector.im with nodejs/npm
RUN npm install -g webpack http-server

ENV BV_VEC=master
ADD https://github.com/vector-im/vector-web/archive/$BV_VEC.zip v.zip
RUN unzip v.zip \
    && rm v.zip \
    && mv vector-web-$BV_VEC vector-web \
    && cd vector-web \
    && npm install \
    && GIT_VEC=$(git ls-remote https://github.com/vector-im/vector-web $BV_VEC | cut -f 1) \
    && echo "vector:  $BV_VEC ($GIT_VEC)" > /synapse.version \
    && npm run build

