FROM debian:latest


RUN apt update -y && apt install  mariadb-server -y

COPY ./conf /etc/mysql/my.cnf

COPY ./tools/script.sh /

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]
