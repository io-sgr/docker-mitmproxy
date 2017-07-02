FROM sgrio/ubuntu-python
MAINTAINER SgrAlpha <admin@mail.sgr.io>

EXPOSE 8080 8081

RUN apt-get update && \
    apt-get install \
        --no-install-recommends -y \
        build-essential \
        libssl-dev \
        python3-dev && \
    pip3 install \
        --no-cache-dir \
        mitmproxy && \
    apt-get remove --purge -y \
        build-essential \
        libssl-dev \
        python3-dev && \
    apt-get autoclean && \
    apt-get autoremove --purge -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*