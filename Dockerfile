FROM node:16.20.1-alpine

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

RUN mkdir -p data

CMD ["node", "index.js"]

EXPOSE 3000