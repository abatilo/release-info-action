FROM alpine:3.12.0

RUN apk --no-cache add curl jq && \
      rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
