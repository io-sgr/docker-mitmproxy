## Simple and the latest image of mitmproxy

This repository contains **Dockerfile** of [mitmproxy](https://mitmproxy.org) for [Docker](https://www.docker.com/)'s [automated build](https://hub.docker.com/r/sgrio/mitm/) published to the public [Docker Hub](https://hub.docker.com/).

### Usage
```
docker run -it --rm \
    -v ~/.mitmproxy:/root/.mitmproxy \
    -p 8080:8080 \
    sgrio/mitmproxy mitmproxy
```
