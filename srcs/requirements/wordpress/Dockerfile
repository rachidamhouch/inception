FROM debian:latest

RUN apt update -y && apt install php-fpm php-mysql wget -y

COPY ./tools/script.sh /

RUN chmod +x script.sh

RUN ./script.sh

COPY ./tools/run.sh /

RUN chmod +x run.sh

ENTRYPOINT ["bash", "run.sh"]
 