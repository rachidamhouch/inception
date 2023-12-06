FROM debian:stable

RUN apt update -y && apt install -y nginx openssl && rm -rf /var/lib/apt/lists/*

COPY ./tools/script.sh /

RUN chmod +x /script.sh

RUN ./script.sh

COPY ./conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]
