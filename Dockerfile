FROM alpine:3.12.0

RUN apk --no-cache add curl=7.66.0-r0 jq=1.6-r0 && \
      rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
