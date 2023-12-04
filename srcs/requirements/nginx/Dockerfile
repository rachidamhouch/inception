FROM debian:latest

RUN apt update -y && apt install nginx -y && apt install openssl -y

COPY ./tools/script.sh /

RUN chmod +x /script.sh

RUN ./script.sh

COPY ./conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]
