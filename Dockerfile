FROM progrium/busybox

ADD http://nodejs.org/dist/v0.10.34/node-v0.10.34-linux-x64.tar.gz /tmp/nodejs.tar.gz

RUN \
  mkdir -p /usr/local/lib/node && \
  mkdir -p /usr/local/bin && \
  tar --strip-components=1 -xzvf /tmp/nodejs.tar.gz -C /usr/local/lib/node && \
  rm -rf /tmp/nodejs.tar.gz && \
  ln -s /usr/local/lib/node/bin/node /usr/local/bin/node && \
  ln -s /usr/local/lib/node/bin/npm /usr/local/bin/npm

