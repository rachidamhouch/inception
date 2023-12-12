FROM debian:stable


RUN apt update -y && apt install mariadb-server -y && rm -rf /var/lib/apt/lists/*

COPY ./conf /etc/mysql/my.cnf

COPY ./tools/script.sh /

RUN chmod +x script.sh

CMD ["./script.sh"]
