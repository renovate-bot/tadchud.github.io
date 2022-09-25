FROM nginx:stable
EXPOSE 80

COPY default.conf /etc/nginx/conf.d/default.conf

COPY * /etc/nginx/html

RUN chmod -R 777 /etc/nginx/html

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]