# stage1 as builder
FROM node:latest

RUN mkdir /app
WORKDIR /app
COPY . .

RUN npm install --allow-root
EXPOSE 3000

ENTRYPOINT ["node", "index.js"]