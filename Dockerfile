FROM debian:trixie

RUN apt -y update && apt -y install jekyll didder imagemagick

EXPOSE 4000

CMD bash
