FROM debian:stable-slim

RUN apt-get update && \
    apt-get install --no-install-recommends \
    wget \
    git \
    python \
    ca-certificates \
    xz-utils \
    xvfb \
    libfontconfig1-dev -y && \
    wget -nv -O- https://download.calibre-ebook.com/linux-installer.py | \
    python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"
