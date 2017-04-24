FROM node:slim

ENV HEXO_SERVER_PORT=4000

RUN apt-get update

RUN apt-get install git -y

RUN npm install -g hexo-cli

WORKDIR /app

EXPOSE ${HEXO_SERVER_PORT}

CMD npm install; hexo clean; hexo server -d -p ${HEXO_SERVER_PORT}
