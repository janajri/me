FROM node
WORKDIR /website
ADD package.json package.json
ADD scaffolds scaffolds
ADD source source
ADD themes themes
ADD _config.yml _config.yml
RUN npm install hexo --save
RUN npm install --unsafe-perm
EXPOSE 4000
CMD ./node_modules/.bin/hexo server
