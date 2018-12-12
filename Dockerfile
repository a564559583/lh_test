FROM nginx

COPY _nginx/default.conf /etc/nginx/conf.d/

RUN rm -rf /usr/share/nginx/html/*

COPY . /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]