FROM debian:trixie-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
        bash \
        xz-utils && \
    rm -rf /var/lib/apt/lists/*

RUN curl -sSfL https://get.tur.so/install.sh | bash

ENV PATH=/root/.turso:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ENTRYPOINT ["turso"]
