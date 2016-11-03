# image-fuzzy-alpine-memcached

Fuzzy as in reference to the https://en.wikipedia.org/wiki/The_Mythical_Man-Month book where Fred describes the approach of "write one to throw away" as the best start.

Memcached on Alpine.

Maintained by: Aleksi Johansson <aleksi.johansson@wunder.io>

## Docker

### Image

This image is available publicly at:

- quay.io/wunder/fuzzy-alpine-memcached : [![Docker Repository on Quay](https://quay.io/repository/wunder/fuzzy-alpine-memcached/status "Docker Repository on Quay")](https://quay.io/repository/wunder/fuzzy-alpine-memcached)

### Base

This image is based on the fuzzy-alpine-base image https://github.com/wunderkraut/image-fuzzy-alpine-base.

### Modifications

This image adds the following files:

#### /start.sh

This is a custom startup script:

1. Take environment variables and use them as configuration when starting the app.

## Using this Image

Run this container as an independent service:
```
$/> docker run -d quay.io/wunder/fuzzy-alpine-memcached
```
Link any needed services such as php-fpm to this service to take advantage of it.
