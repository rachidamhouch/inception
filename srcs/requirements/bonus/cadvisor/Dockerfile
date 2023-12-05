FROM debian:stable

RUN apt update && apt install -y curl

RUN curl -LO https://github.com/google/cadvisor/releases/download/v0.39.0/cadvisor && chmod +x cadvisor

CMD ["./cadvisor"]