FROM sgrio/alpine-python
MAINTAINER SgrAlpha <admin@mail.sgr.io>

EXPOSE 8080 8081

RUN apk add --no-cache \
        g++ \
        libffi \
        libffi-dev \
        libstdc++ \
        openssl \
        openssl-dev \
        python3-dev && \
    LDFLAGS=-L/lib pip3 install \
        --no-cache-dir \
        mitmproxy && \
    apk del --purge \
        g++ \
        libffi-dev \
        libstdc++ \
        openssl-dev \
        python3-dev
	
