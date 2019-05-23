FROM alpine:3.5

# Maintainer
MAINTAINER Andreas Peters <support@aventer.biz>

# install homeserver template
COPY adds/start.sh /start.sh

# startup configuration
ENTRYPOINT ["/start.sh"]

# Git branch to download  
ARG BV_VEC=v1.1.2
ENV BV_VEC=${BV_VEC:-master}

# To rebuild the image, add `--build-arg REBUILD=$(date)` to your docker build
# command.
ARG REBUILD=0

# update and upgrade
# installing riot.im with nodejs/npm
RUN chmod a+x /start.sh \
    && apk update \
    && apk add \
        curl \
        libevent \
        libffi \
        libjpeg-turbo \
        libssl1.0 \
        nodejs \
        sqlite-libs \
	git \
        unzip \
        || exit 1 ; \
    npm install -g webpack http-server yarn \
    && curl -L https://github.com/vector-im/riot-web/archive/$BV_VEC.zip -o v.zip \
    && unzip v.zip \
    && rm v.zip \
    && mv riot-web-* riot-web \
    && cd riot-web \
    && npm install \
    && rm -rf /riot-web/node_modules/phantomjs-prebuilt/phantomjs \
    && echo "riot:  $BV_VEC " > /synapse.version \
    && npm run build \
    || exit 1 \
    ; \
    mv /riot-web/webapp / ; \
    rm -rf /riot-web ; \
    rm -rf /root/.npm ; \
    rm -rf /tmp/* ; \
    rm -rf /urs/lib/node_modules ; \
    apk del \
        unzip \
        libevent \
        libffi \
        libjpeg-turbo \
        libssl1.0 \
        sqlite-libs \
	git \
	curl \
        ; \
    rm -rf /var/lib/apk/* /var/cache/apk/*

