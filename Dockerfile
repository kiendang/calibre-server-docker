FROM frolvlad/alpine-glibc

RUN apk update && \
    apk add --no-cache \
    wget \
    python \
    libstdc++ && \
    wget -nv -O- https://download.calibre-ebook.com/linux-installer.py | \
    python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()" && \
