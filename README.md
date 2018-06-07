# Docker container for running Calibre ebook database server

To run calibre server

```sh
docker run \
    -v <path_to_local_ebook_dir>:/db \
    -p 127.0.0.1:<port>:80 \
    calibre-server --port 80 /db
```

To connect

```sh
calibredb --with-library http://localhost:<port>/#db list
```
