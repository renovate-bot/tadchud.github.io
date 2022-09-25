FROM nginx:stable
EXPOSE 80

COPY default.conf /etc/nginx/conf.d/default.conf

COPY * /usr/share/nginx/html/

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]