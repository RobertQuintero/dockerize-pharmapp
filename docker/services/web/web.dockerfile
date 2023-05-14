FROM nginx:latest

# RUN mkdir /etc/nginx/ssl
COPY vhost.conf /etc/nginx/conf.d/default.conf

COPY pharmapp.robertquintero.me.key /etc/nginx/ssl/pharmapp.robertquintero.me.key
COPY pharmapp.robertquintero.me.pem /etc/nginx/ssl/pharmapp.robertquintero.me.pem
COPY private.key /etc/nginx/ssl/private.key

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
