FROM debian:stable

RUN apt update -y && apt install -y nodejs npm git && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY ./app.js .

RUN git clone https://github.com/rachidamhouch/simonGame public

RUN npm init -y && npm i express

CMD ["node", "app.js"]