FROM node

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty

RUN mkdir -p testapp

COPY . /docker-testapp-main 

CMD ["node", "/docker-testapp-main/server.js"]