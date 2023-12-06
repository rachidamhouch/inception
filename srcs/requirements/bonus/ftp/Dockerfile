FROM debian:stable

RUN apt update && apt install -y iputils-ping vsftpd && rm -rf /var/lib/apt/lists/*

COPY ./conf /etc/vsftpd.conf

COPY ./tools/script.sh .

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh" ] 