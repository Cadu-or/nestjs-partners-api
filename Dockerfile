FROM node:latest

RUN apt-get update && apt-get install -y openssl procps

RUN npm install -g @nestjs/cli@10.3.2

WORKDIR /home/node/app

RUN usermod -u 1001 node

USER node

CMD tail -f /dev/null