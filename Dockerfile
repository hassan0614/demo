FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

ENV MONGO_DB_USERNAME=admin
ENV MONGO_DB_PWD=qwerty

EXPOSE 5050

CMD ["node", "server.js"]
