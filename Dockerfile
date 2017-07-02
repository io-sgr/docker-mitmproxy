FROM sgrio/alpine-python
MAINTAINER SgrAlpha <admin@mail.sgr.io>

EXPOSE 8080 8081

RUN apk add --no-cache \
        g++ \
        libstdc++ \
        openssl \
        openssl-dev \
        python3-dev && \
    pip3 install \
        --no-cache-dir \
        --index-url=http://pypi.python.org/simple/ \
        --trusted-host pypi.python.org \
        mitmproxy && \
    apk del --purge \
        g++ \
        libstdc++ \
        openssl-dev \
        python3-dev
	
