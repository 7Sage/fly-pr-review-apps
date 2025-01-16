FROM alpine

RUN apk add --no-cache curl jq expect

RUN curl -L https://fly.io/install.sh | FLYCTL_INSTALL=/usr/local sh

COPY entrypoint.sh /entrypoint.sh
COPY delete_db /delete_db

ENTRYPOINT ["/entrypoint.sh"]
