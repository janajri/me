FROM node:alpine
RUN npm install hexo-cli -g
EXPOSE 4000
CMD hexo server
