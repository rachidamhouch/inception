FROM debian:latest

COPY ./script.sh /

RUN chmod +x /script.sh

RUN ./script.sh

COPY ./default /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]
