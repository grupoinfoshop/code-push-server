# Usar a imagem base Node.js com Alpine Linux
FROM node:lts-alpine

RUN mkdir /data/

ARG VERSION=latest

WORKDIR /app

COPY package.json .

RUN npm install

COPY . . 

RUN npm run build

EXPOSE 3000

CMD ["sh", "-c", "npm run start"]