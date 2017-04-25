FROM node
WORKDIR /website
RUN cat /etc/resolv.conf
ADD package.json package.json
ADD scaffolds scaffolds
ADD source source
ADD themes themes
ADD _config.yml _config.yml
RUN npm install --unsafe-perm
CMD hexo server
