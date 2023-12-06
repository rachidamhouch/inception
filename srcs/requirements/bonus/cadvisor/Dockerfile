FROM debian:stable

RUN apt update && apt install -y curl && rm -rf /var/lib/apt/lists/*

RUN curl -LO https://github.com/google/cadvisor/releases/download/v0.39.0/cadvisor && chmod +x cadvisor

CMD ["./cadvisor"]