FROM node:lts-alpine

RUN apk add --no-cache tzdata

ENV TZ=America/Campo_Grande

RUN mkdir /data/

ARG VERSION=latest

WORKDIR /app

COPY package.json .

RUN npm install

COPY . . 

RUN npm run build

EXPOSE 3000

CMD ["sh", "-c", "npm run start"]