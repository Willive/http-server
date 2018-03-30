FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /  /usr/src/app/

RUN npm install
RUN npm install express
RUN npm run build

CMD node server.js