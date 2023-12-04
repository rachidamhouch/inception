FROM debian:latest


RUN apt update -y
RUN apt install  mariadb-server -y
COPY ./default /etc/mysql/mariadb.conf.d/
COPY ./script.sh /
RUN chmod +x script.sh
ENTRYPOINT ["./script.sh"]
