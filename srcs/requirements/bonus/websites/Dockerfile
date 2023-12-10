FROM debian:stable

RUN apt update -y && apt install -y nodejs npm && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN npm init -y && npm i express

ENTRYPOINT ["node", "app.js"]