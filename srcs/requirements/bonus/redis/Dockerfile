FROM debian:stable

RUN apt-get update && apt install -y redis-server && rm -rf /var/lib/apt/lists/*

CMD ["redis-server"]

