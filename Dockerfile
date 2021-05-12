FROM node:12.7-slim

WORKDIR /app

COPY ./package*.json ./

RUN npm install

COPY ./ ./

EXPOSE 80

CMD [ "npm", "run", "serve" ]