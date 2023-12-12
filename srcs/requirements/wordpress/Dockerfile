FROM debian:stable

RUN apt update -y && apt install php-fpm php-mysql wget -y && rm -rf /var/lib/apt/lists/*

COPY ./tools/script.sh /

RUN chmod +x script.sh && ./script.sh && rm script.sh

COPY ./tools/run.sh /

RUN chmod +x run.sh

CMD ["./run.sh"]
 