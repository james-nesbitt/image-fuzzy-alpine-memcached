# wunder/fuzzy-alpine-memcached
#
# VERSION v1.4.32-0
#
FROM quay.io/wunder/fuzzy-alpine-base:v3.4
MAINTAINER aleksi.johansson@wunder.io

# Configurations.
ENV MEMCACHED_MEMORY 128
ENV MEMCACHED_MAX_CONNECTIONS 1024
ENV MEMCACHED_MAX_ITEM_SIZE 4M

# Add our start script.
COPY start.sh /start.sh

# Update the package repository and install applications.
RUN apk --no-cache --update add memcached && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/* && \
    chmod 755 /start.sh

# Run as memcached.
USER memcached

# Expose port 11211.
EXPOSE 11211

# Set start script as default command.
CMD ["/start.sh"]
