FROM debian:latest


RUN apt update -y
RUN apt install  mariadb-server -y
COPY ./default /etc/mysql/my.cnf
COPY ./script.sh /
RUN chmod +x script.sh
ENTRYPOINT ["./script.sh"]
