FROM debian:stable

RUN apt update -y && apt install -y git nodejs npm && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/rachidamhouch/weatherApp

WORKDIR /weatherApp

RUN npm i

ENTRYPOINT ["node", "app.js"]