FROM node:alpine

WORKDIR /usr/src/app/config

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]