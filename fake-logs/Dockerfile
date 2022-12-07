

ARG ALPINE_VERSION=3.17

FROM alpine:${ALPINE_VERSION}
LABEL maintainer="ductnn"

RUN apk add --no-cache bc && \
    rm -rf /var/cache/apk/* && \
    rm -rf ~/.cache 

COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD [ "100", "5000" ]
