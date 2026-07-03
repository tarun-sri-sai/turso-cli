FROM alpine:latest

RUN apk add --no-cache \
    bash \
    curl \
    ca-certificates \
    xz

RUN curl -sSfL https://get.tur.so/install.sh | bash

ENV PATH="/root/.turso:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

ENTRYPOINT ["turso"]
