FROM nginx
ADD nginx/conf.d /etc/nginx/conf.d
ADD /public /www/home
ADD nginx/nginx.conf /etc/nginx/nginx.conf
