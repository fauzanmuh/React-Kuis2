FROM node:11.4.0-alpine

WORKDIR /src

COPY package*.json ./

RUN npm install

COPY . /src

CMD [ "npm", "./index.js" ]

EXPOSE 3000