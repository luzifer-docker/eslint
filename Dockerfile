FROM node:9-alpine

ENV ESLINT_VERSION=4.19.1

RUN set -ex \
 && npm install -g \
      eslint@${ESLINT_VERSION} \
      eslint-config-standard@latest \
      eslint-plugin-import@latest \
      eslint-plugin-node@latest \
      eslint-plugin-promise@latest \
      eslint-plugin-standard@latest \
      eslint-plugin-vue@latest \
 && rm -rf /usr/share/man /tmp/* \
           /root/.npm /root/.node-gyp \
           /usr/lib/node_modules/npm/man \
           /usr/lib/node_modules/npm/doc \
           /usr/lib/node_modules/npm/html

ENTRYPOINT ["/usr/local/bin/eslint"]
