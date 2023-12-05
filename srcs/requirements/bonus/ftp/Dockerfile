FROM debian:buster
RUN apt-get update && apt-get upgrade -y 

# UDPATE & INSTALLATION
RUN apt-get install -y iputils-ping vim vsftpd 

COPY ./conf /etc/vsftpd.conf

COPY ./tools/script.sh .
RUN chmod +x script.sh

ENTRYPOINT ["./script.sh" ] 