FROM ubuntu
MAINTAINER IDCP version: v0.1.0

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN cd ~ && \
    apt-get update && apt-get install -my wget gnupg && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash && \ 
    apt-get install -y nodejs && \
    apt-get install -y build-essential


COPY node-red-template /usr/bin/node-red-template

WORKDIR /usr/bin/node-red-template

RUN npm install && npm run build

ENTRYPOINT ["node", "/usr/bin/node-red-template/red.js", "-s", "/usr/bin/node-red-template/settings.js"]

