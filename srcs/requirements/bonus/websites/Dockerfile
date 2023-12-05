FROM debian:stable

RUN apt update -y && apt install git -y && apt install nodejs -y && apt install npm -y

RUN git clone https://github.com/rachidamhouch/weatherApp

RUN cd weatherApp

WORKDIR /weatherApp

RUN npm i 

ENTRYPOINT ["node", "app.js"]