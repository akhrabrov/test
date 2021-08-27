FROM node:12.14.1-alpine AS build

WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . ./

CMD node app.js
