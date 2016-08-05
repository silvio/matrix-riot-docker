#!/usr/bin/env sh

if [ -f /data/config.json ]; then
	echo "-=> vector config file found, ... rebuild sources"
	cd /vector-web
	cp /data/config.json /vector-web/config.json

	npm run build
fi

if [ -f /data/vector.im.conf ]; then
	options=""

	while read -r line; do
		[ "${line:0:1}" == "#" ] && continue
		[ "${line:0:1}" == " " ] && continue
		options="${options} ${line}"
	done < /data/vector.im.conf

	cd /vector-web/vector
	echo "-=> vector.im options: http-server ${options}"
	http-server ${options}
else
	echo "You need a vector.im.conf in you conf folder"
	exit 1
fi
