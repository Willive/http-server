FROM node
WORKDIR /usr/src/app
COPY package.json .
RUN apt-get update \
 && npm install --quiet
COPY . .
CMD ["node", "index.js"]