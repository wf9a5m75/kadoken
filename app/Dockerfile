FROM node:10-alpine

EXPOSE 8080

# node.js の環境変数を定義する
ARG NODE_ENV=staging
ENV NODE_ENV=$NODE_ENV

WORKDIR /app/

COPY package.json .
COPY package-lock.json .
RUN npm install .

CMD npx node-dev --poll  src/index.js
