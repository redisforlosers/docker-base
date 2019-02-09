FROM alpine:3.8

COPY entrypoint.sh /usr/local/bin/docker-base-entrypoint.sh

RUN set -xe \
	&& apk add --update --no-cache \
    	su-exec \
	&& chmod +x /usr/local/bin/docker-base-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-base-entrypoint.sh"]