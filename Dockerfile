FROM python:2.7-alpine3.7

RUN apk add --no-cache wget git xvfb fontconfig && \
    wget -nv -O- https://download.calibre-ebook.com/linux-installer.py | python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

EXPOSE 80

VOLUME ["/db"]

