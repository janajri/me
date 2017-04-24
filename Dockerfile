FROM node:latest
ADD package.json package.json
ADD scaffolds scaffolds
ADD source source
ADD themes themes
ADD _config.yml _config.yml
RUN npm install
EXPOSE 4000
CMD hexo server
