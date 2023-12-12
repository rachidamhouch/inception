FROM debian:stable

RUN apt update && apt install -y vsftpd && rm -rf /var/lib/apt/lists/*

COPY ./conf /etc/vsftpd.conf

COPY ./tools/script.sh .

RUN chmod +x script.sh

CMD ["./script.sh" ] 