FROM debian:stable

RUN apt update && apt install -y iputils-ping vim vsftpd 

COPY ./conf /etc/vsftpd.conf

COPY ./tools/script.sh .

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh" ] 