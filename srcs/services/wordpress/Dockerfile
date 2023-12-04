FROM debian:latest


COPY ./script.sh /
RUN chmod +x script.sh
RUN ./script.sh
COPY ./run.sh /
RUN chmod +x run.sh
ENTRYPOINT ["bash", "run.sh"]
 