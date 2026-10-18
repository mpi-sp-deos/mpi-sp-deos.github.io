FROM debian:trixie

RUN apt -y update && apt -y install jekyll

EXPOSE 4000

CMD bash
