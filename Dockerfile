FROM mirror-hub.docker.tech.lastmile.com/node:6.9-alpine
RUN apk --no-cache add openssl
RUN wget https://github.com/etsy/statsd/archive/v0.8.0.tar.gz -O - | tar zx
WORKDIR statsd-0.8.0
RUN npm install
CMD node stats.js /statsd-config/config.js