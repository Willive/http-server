FROM node
WORKDIR /usr/src/app
COPY . .
RUN apt-get update \
 && npm install --quiet
CMD ["node", "index.js"]